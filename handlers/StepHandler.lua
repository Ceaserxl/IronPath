--============================================================
-- StepHandler.lua – Step display and navigation
--============================================================
local IronPath     = _G.IronPath
local NavBar       = _G.IronPathNavBar
local GuideViewer  = _G.IronPathViewer
local FooterBar    = _G.IronPathFooter
local HBD          = LibStub("HereBeDragons-2.0")

--============================================================
-- Initialization
--============================================================
GuideViewer.currentStep = IronPath.db and IronPath.db.char.lastStep or 1

local function DebugPrint(msg)
    if IronPath.db and IronPath.db.profile and IronPath.db.profile.debug then
        print("|cff8888ff[IronPath Debug]:|r " .. msg)
    end
end

--============================================================
-- Step Filtering
--============================================================
function GuideViewer:GetVisibleSteps()
    local guide = IronPath_CurrentGuide
    if not guide or not guide.steps then return {} end

    local visible = {}
    local stepDebug = IronPath.db.profile.stepDebug

    for _, step in ipairs(guide.steps) do
        if stepDebug then
            table.insert(visible, step)
        else
            local result, matched = IronPath:EvaluateCondition(step.condition)
            if result then
                step._conditionMatched = matched
                table.insert(visible, step)
            end
        end
    end

    return visible
end

--============================================================
-- Step Display
--============================================================
function GuideViewer:ShowStep()
    local steps = self:GetVisibleSteps()
    if #steps == 0 then
        self.notesText:SetText("|cffff0000No valid steps|r")
        self.objectivesInfo:SetText("")
        self.stepObjective:SetText("")
        return
    end

    -- Restore current step from saved state
    if IronPath.db and IronPath.db.char and IronPath.db.char.lastStep then
        DebugPrint("Restoring step: " .. IronPath.db.char.lastStep)
        self.currentStep = IronPath.db.char.lastStep
    end

    self.currentStep = math.max(1, math.min(self.currentStep, #steps))
    DebugPrint("Saving step:" .. self.currentStep)
    IronPath.db.char.lastStep = self.currentStep
    local step = steps[self.currentStep]
    Step = self.currentStep

    -- Resolve handler and step state
    local handler = self.ActionHandlers[step.action] or self.ActionHandlers.default
    local actionLine, isComplete, stepValid = handler(self, step, true)

    step._wasComplete = step._wasComplete or isComplete

    -- Metadata display
    local guide = IronPath_CurrentGuide
    local mapID = C_Map.GetBestMapForUnit("player")
    local currentZone = C_Map.GetMapInfo(mapID or 0).name or "Unknown"
    local stepZone = step.zone or guide.zone or "Unknown"
    local zoneOK = currentZone == stepZone

    FooterBar.guideTitle:SetText(string.format("|cffffff00%s - %s - %s|r", guide.faction, guide.race, guide.levelRange))
    IronPathUI.stepInfo:SetText(string.format("|cffffff00Step %d of %d|r", self.currentStep, #steps))
    GuideViewer.zoneLabel:SetText("|A:Dungeon:16:16|a Zone: " .. (zoneOK and "|cff00ff00" or "|cffffff00") .. stepZone .. "|r")

    -- Objectives sub-label with conditions
    local subLabel = step.action and step.action:gsub("^%l", string.upper) or "Objective"
    if step.condition and step._conditionMatched and #step._conditionMatched > 0 then
        subLabel = subLabel .. " |cff00ff00(" .. table.concat(step._conditionMatched, ", ") .. ")|r"
    elseif step.condition then
        subLabel = subLabel .. " |cff808080(" .. step.condition .. ")|r"
    end
    GuideViewer.objectivesLabel:SetText("|A:None:16:16:0:0|a Objectives: |cffffff00" .. subLabel .. "|r")

    -- Coordinates label
    if step.coords then
        local zx, zy = step.coords[1] / 100, step.coords[2] / 100
        local tx, ty, ti = HBD:GetWorldCoordinatesFromZone(zx, zy, mapID)
        local px, py, pi = HBD:GetPlayerWorldPosition()
        local near = tx and ty and px and py and ti == pi and ((tx - px)^2 + (ty - py)^2)^0.5 <= 0.005

        GuideViewer.goToLabel:SetText(string.format("|A:FlightMaster:16:16|a GoTo: %s(%.2f, %.2f)|r",
            near and "|cff00ff00" or "|cffffff00", step.coords[1], step.coords[2]))
        GuideViewer.goToLabel:Show()
    else
        GuideViewer.goToLabel:SetText("")
        GuideViewer.goToLabel:Hide()
    end

    self.currentStepData = step -- let label logic read from step context
    self:StackStepLabels()

    if type(actionLine) == "string" and actionLine ~= "" then
        GuideViewer.stepObjective:SetText(actionLine)
    else
        GuideViewer.stepObjective:SetText("")
    end

    -- Notes
    if step.note and step.note ~= "" and step.action ~= "note" and step.action ~= "walk" then
        GuideViewer.line2:Show()
        GuideViewer.notesLabel:Show()
        GuideViewer.notesText:Show()
        GuideViewer.notesText:SetText("|cffa0a0a0" .. step.note .. "|r")
    else
        GuideViewer.line2:Hide()
        GuideViewer.notesLabel:Hide()
        GuideViewer.notesText:Hide()
    end

    -- Completion overlay
    GuideViewer.completeOverlay:SetShown(step._wasComplete)

    -- Invalid step overlay
    GuideViewer.invalidOverlay:SetShown(not step._wasComplete and stepValid == false)

    -- World/Minimap Pins
    if step.coords then
        IronPath:GoTo(step.coords[1], step.coords[2])

        local tooltipScript = function(self)
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            GameTooltip:SetText("Step: " .. (step.action or "Unknown"), 1, 1, 1)
            GameTooltip:Show()
        end

        if worldPin then
            worldPin:SetScript("OnEnter", tooltipScript)
            worldPin:SetScript("OnLeave", function() GameTooltip:Hide() end)
        end

        if miniPin then
            miniPin:SetScript("OnEnter", tooltipScript)
            miniPin:SetScript("OnLeave", function() GameTooltip:Hide() end)
        end
    else
        IronPath:GoTo()
    end

    -- Auto-resize height
    C_Timer.After(0, function()
        local top = IronPathUI
        local bottom = GuideViewer.notesText:IsShown() and GuideViewer.notesText or GuideViewer.line2
        if top and bottom then
            local topY, bottomY = top:GetTop(), bottom:GetBottom()
            if topY and bottomY then
                GuideViewer:SetHeight(topY - bottomY - 10)
            end
        end
    end)

    -- Cancel any existing step poller
    if self.stepPoller and self.stepPoller.Cancel then
        self.stepPoller:Cancel()
        self.stepPoller = nil
    end

    -- Always run if AutoAdvance is enabled
    if IronPath.db.profile.autoAdvance then
        self.stepPoller = C_Timer.NewTicker(1.0, function()
            if GuideViewer.completeOverlay and GuideViewer.completeOverlay:IsShown() then
                local steps = GuideViewer:GetVisibleSteps()
                local index = GuideViewer.currentStep or 1
                if index < #steps then
                    GuideViewer.currentStep = index + 1
                    GuideViewer:ShowStep()
                end
            end
        end)
    end
end

function GuideViewer:StackStepLabels()
    local base = self.line1
    local yOffset = -8

    local function attach(label, indent)
        if label and label:IsShown() and label:GetText() ~= "" then
            label:ClearAllPoints()
            label:SetPoint("TOPLEFT", base, "BOTTOMLEFT", indent or 0, yOffset)
            base = label
            yOffset = -2
        end
    end

    -- Always show objectivesLabel
    self.objectivesLabel:Show()
    attach(self.objectivesLabel, 0)

    attach(self.goToLabel, 20)

    -- Show/hide talkToLabel based on content
    if self.talkToLabel then
        if self.currentStepData and (self.currentStepData.npc or self.currentStepData.object) then
            self.talkToLabel:Show()
        else
            self.talkToLabel:SetText("")
            self.talkToLabel:Hide()
        end
    end
    attach(self.talkToLabel, 0)

    -- Show/hide questToCompleteLabel based on quest presence
    if self.questToCompleteLabel then
        if self.currentStepData and self.currentStepData.quest then
            self.questToCompleteLabel:Show()
        else
            self.questToCompleteLabel:SetText("")
            self.questToCompleteLabel:Hide()
        end
    end
    attach(self.questToCompleteLabel, 0)

    local indent = 0
    if base == self.talkToLabel then
        indent = -20
    elseif base ~= self.objectivesLabel then
        indent = -20
    end

    self.stepObjective:ClearAllPoints()
    self.stepObjective:SetPoint("TOPLEFT", base, "BOTTOMLEFT", indent, 0)
end


--============================================================
-- Step Completion Checker
--============================================================
function GuideViewer:IsStepComplete(step)
    local handler = self.ActionHandlers[step.action] or self.ActionHandlers.default
    local _, _, wasComplete = handler(self, step, true)
    return wasComplete == true or step._wasComplete == true
end

--============================================================
-- Navigation Buttons
--============================================================
NavBar.nextBtn:RegisterForClicks("LeftButtonUp", "RightButtonUp")
NavBar.nextBtn:SetScript("OnClick", function(_, button)
    local steps = GuideViewer:GetVisibleSteps()
    local currentIndex = GuideViewer.currentStep or 1
    local current = steps[currentIndex]

    if current and current._walkTicker and current._walkTicker.ticker then
        current._walkTicker.ticker:Cancel()
        current._walkTicker = nil
        DebugPrint("Walk ticker cancelled via Next button.")
    end

    if button == "RightButton" then
        for i = currentIndex + 1, #steps do
            if not GuideViewer:IsStepComplete(steps[i]) then
                GuideViewer.currentStep = i
                IronPath.db.char.lastStep = GuideViewer.currentStep
                GuideViewer:ShowStep()
                return
            end
        end
        if currentIndex < #steps then
            GuideViewer.currentStep = currentIndex + 1
            IronPath.db.char.lastStep = GuideViewer.currentStep
            GuideViewer:ShowStep()
        end
    else
        if currentIndex < #steps then
            GuideViewer.currentStep = currentIndex + 1
            IronPath.db.char.lastStep = GuideViewer.currentStep
            GuideViewer:ShowStep()
        end
    end
end)

NavBar.prevBtn:SetScript("OnClick", function()
    local steps = GuideViewer:GetVisibleSteps()
    local currentIndex = GuideViewer.currentStep or 1

    if currentIndex > 1 then
        local current = steps[currentIndex]
        if current and current._walkTicker and current._walkTicker.ticker then
            current._walkTicker.ticker:Cancel()
            current._walkTicker = nil
            DebugPrint("Walk ticker cancelled via Prev button.")
        end

        GuideViewer.currentStep = currentIndex - 1
        IronPath.db.char.lastStep = GuideViewer.currentStep
        GuideViewer:ShowStep()
    end
end)

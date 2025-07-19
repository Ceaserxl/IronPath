--============================================================
-- StepHandler.lua – Step display and navigation
--============================================================
local IronPath = _G.IronPath
local UI       = _G.IronPathUI
local HBD      = LibStub("HereBeDragons-2.0")

UI.currentStep = IronPath.db and IronPath.db.profile.lastStep or 1

function UI:GetVisibleSteps()
    local guide = IronPath_CurrentGuide
    if not guide or not guide.steps then return {} end
    local visible = {}
    for _, step in ipairs(guide.steps) do
        if not step.condition or IronPath:EvaluateCondition(step.condition) then
            table.insert(visible, step)
        end
    end
    return visible
end

local function DebugPrint(msg)
    if IronPath.db and IronPath.db.profile and IronPath.db.profile.debug then
        print("|cff8888ff[IronPath Debug]:|r " .. msg)
    end
end

-- IronPathUI:ShowStep
function UI:ShowStep()
    local steps = self:GetVisibleSteps()
    if #steps == 0 then
        self.stepText:SetText("|cffff0000No valid steps|r")
        return
    end

    -- Update current step
    self.currentStep = math.max(1, math.min(self.currentStep or 1, #steps))
    local step = steps[self.currentStep]

    -- Track current completion status (no auto-advance)
    local isComplete = step.qid and C_QuestLog.IsQuestFlaggedCompleted(step.qid) or false
    step._wasComplete = step._wasComplete or isComplete

    local handler = self.ActionHandlers[step.action] or self.ActionHandlers.default
    local questLine, actionLine = handler(self, step, isComplete)

    local guide = IronPath_CurrentGuide
    local mapID = C_Map.GetBestMapForUnit("player")
    local cur = C_Map.GetMapInfo(mapID or 0).name or "Unknown"
    local stepZone = step.zone or guide.zone or "Unknown"
    local zoneOK = cur == stepZone
    local zoneLine = ("Zone: %s%s|r"):format(zoneOK and "|cff00ff00" or "|cffffff00", stepZone)

    local coordsLine = "GoTo: |cffff0000(none)|r\n"
    if step.coords then
        local zx, zy = step.coords[1]/100, step.coords[2]/100
        local tx, ty, ti = HBD:GetWorldCoordinatesFromZone(zx, zy, mapID)
        local px, py, pi = HBD:GetPlayerWorldPosition()
        local near = tx and ty and px and py and ti == pi and ((tx - px)^2 + (ty - py)^2)^0.5 <= 0.005
        coordsLine = ("GoTo: %s(%.2f, %.2f)|r\n"):format(near and "|cff00ff00" or "|cffffff00", step.coords[1], step.coords[2])
    end

    local lines = { zoneLine, coordsLine }
    if step.npc then table.insert(lines, "Talk To: |cffffff00" .. step.npc .. "|r") end
    if questLine ~= "" then table.insert(lines, questLine) end
    table.insert(lines, actionLine)
    if step.note then table.insert(lines, "\n|cffa0a0a0" .. step.note .. "|r") end

    self.navInfo:SetText(string.format("|cffffff00Step %d/%d|r", self.currentStep, #steps))
    self.guideTitle:SetText(string.format("|cffffff00%s - %s - %s|r", guide.faction, guide.race, guide.levelRange))
    self.stepText:SetText(table.concat(lines, "\n"))
    IronPath.db.profile.lastStep = self.currentStep
    self:Pulse()
    if step.coords then
        IronPath:GoTo(step.coords[1], step.coords[2])
    else
        IronPath:GoTo()
    end
end


UI.nextBtn:SetScript("OnClick", function()
    local steps = UI:GetVisibleSteps()
    local current = steps[UI.currentStep]
    if current and current._walkTicker and current._walkTicker.ticker then
        current._walkTicker.ticker:Cancel()
        current._walkTicker = nil
        DebugPrint("Walk ticker cancelled via Next button.")
    end

    UI.currentStep = UI.currentStep + 1
    UI:ShowStep()
end)

UI.prevBtn:SetScript("OnClick", function()
    if UI.currentStep > 1 then
        local steps = UI:GetVisibleSteps()
        local current = steps[UI.currentStep]
        if current and current._walkTicker and current._walkTicker.ticker then
            current._walkTicker.ticker:Cancel()
            current._walkTicker = nil
            DebugPrint("Walk ticker cancelled via Prev button.")
        end

        UI.currentStep = UI.currentStep - 1
        UI:ShowStep()
    end
end)

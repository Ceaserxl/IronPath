-- ============================================================
-- StepHandler.lua – Displays current step in the viewer
-- ============================================================
local IronPath = _G.IronPath
local GuideViewer = _G.IronPathViewer
local NavBar = _G.IronPathNavBar
local FooterBar = _G.IronPathFooter

local function CheckAndAutoAdvance(step)
    if not step or not step.objectives then
        IronPath:DebugPrint("CheckAndAutoAdvance: Step or objectives missing.",
                            "advance")
        return
    end

    local allComplete = true
    local ignoredTypes = {
        tip = true,
        note = true,
        walk = true,
        title = true,
        talk = true,
        killNote = true,
        click = true,
        gossip = true,
        popuptext = true,
        use = true
    }

    for index, obj in ipairs(step.objectives) do
        if obj._isSticky then
            IronPath:DebugPrint("Skipping sticky objective at index " .. index,
                                "advance")
        elseif not obj.isComplete and not ignoredTypes[obj.type] then
            IronPath:DebugPrint("Objective[" .. index .. "] type=" ..
                                    tostring(obj.type) .. " not complete.",
                                "advance")
            allComplete = false
            break
        end
    end

    if allComplete then
        step._wasComplete = true
        IronPath:DebugPrint(
            "All actionable objectives complete. Step marked complete.",
            "advance")

        if IronPath.db and IronPath.db.profile and
            IronPath.db.profile.autoAdvanceStep and GuideViewer.currentStep ==
            GuideViewer.highestUnlockedStep then
            local oldStep = GuideViewer.currentStep or 1
            GuideViewer:SkipToNextVisibleStep()
            IronPath:DebugPrint(
                "Auto-advanced from step " .. oldStep .. " to " ..
                    GuideViewer.currentStep, "advance")
            GuideViewer:ShowStep()
        else
            IronPath:DebugPrint("Auto-advance disabled in profile.", "advance")
        end
    else
        IronPath:DebugPrint("Step not complete. No auto-advance.", "advance")
    end
end

function GuideViewer:ShowStep()
    local guide = IronPath_CurrentGuide
    if not guide or not guide.steps or #guide.steps == 0 then
        IronPath:DebugPrint("No valid guide or steps found.", "error")
        return
    end

    local steps = self:GetVisibleSteps()
    if #steps == 0 then
        IronPath:DebugPrint("No steps returned from GetVisibleSteps.", "warn")
        return
    end

    local totalSteps = #guide.steps
    self.currentStep = math.max(1, math.min(self.currentStep or 1, totalSteps))
    self.highestUnlockedStep = math.max(self.highestUnlockedStep or 1,
                                        self.currentStep)

    local step = steps[self.currentStep]
    if not step then return end
    GuideViewer.activeStep = step

    self:ResetObjectiveLines()
    GuideViewer.completeOverlay:Hide()

    local mainObjectiveList = {}

    local function ProcessObjectives(objectives, parentStep, isSticky)
        local stickyHeaderShown = false

        for _, obj in ipairs(objectives or {}) do
            if obj._isSticky and not stickyHeaderShown then
                GuideViewer:CreateObjectiveLine("blank",
                                                "|cffffff00== Sticky Objective ==|r",
                                                nil, true)
                stickyHeaderShown = true
            end

            -- ✅ Evaluate completeIf FIRST
            if type(obj.completeIf) == "string" then
                local result = IronPath:EvaluateCondition(obj.completeIf)
                if result then
                    obj.isComplete = true
                    IronPath:DebugPrint("Objective completeIf: " ..
                                            obj.completeIf .. " => true",
                                        "advance")
                end
            end

            -- ✅ Run handler only if not already complete
            local handler = self.ActionHandlers[obj.type]
            if handler and not obj.isComplete then
                local _, _, updated = handler(self, parentStep, true)
                if updated then obj.isComplete = true end
            end

            local action = obj.type or "note"
            local targetText = obj.label or "Objective"
            local isComplete = obj.isComplete
            local blankBox = obj.blankBox

            self:CreateObjectiveLine(action, targetText, isComplete, blankBox,
                                     obj)

            if not obj._isSticky and obj.coords and not obj.isComplete and
                action ~= "walk" then
                table.insert(mainObjectiveList, obj)
            end
        end
    end

    -- Process main step
    ProcessObjectives(step.objectives, step, false)

    -- Process sticky steps
    if GuideViewer._stickySteps then
        local headerShown = false
        for _, stickyStep in pairs(GuideViewer._stickySteps) do end
    end

    -- Show green overlay if complete
    -- if step._wasComplete then GuideViewer.completeOverlay:Show() end

    -- Update footer
    if NavBar and NavBar.stepInfo then
        NavBar.stepInfo:SetText("Step " .. self.currentStep .. " of " ..
                                    totalSteps)
    end

    -- Save last step
    if IronPath.db and IronPath.db.char then
        IronPath.db.char.lastStep = self.currentStep
    end

    -- Set arrow to next active main objective
    if #mainObjectiveList > 0 then
        IronPath:GoToObjective(mainObjectiveList[1])
    else
        IronPath:ClearArrow()
    end

    CheckAndAutoAdvance(step)
end

function GuideViewer:SkipToPreviousVisibleStep()
    local steps = self:GetVisibleSteps()
    local totalSteps = #steps
    local index = self.currentStep - 1

    while index >= 1 do
        local step = steps[index]
        if step and (step._isVisible or IronPath.db.profile.showAllSteps) then
            self.currentStep = index
            return
        end
        index = index - 1
    end

    IronPath:DebugPrint("No previous visible step found.", "warn")
end

function GuideViewer:SkipToNextVisibleStep()
    local steps = self:GetVisibleSteps()
    local totalSteps = #steps
    local index = self.currentStep + 1

    while index <= totalSteps do
        local step = steps[index]
        if step and (step._isVisible or IronPath.db.profile.showAllSteps) then
            self.currentStep = index
            return
        end
        index = index + 1
    end

    IronPath:DebugPrint("No next visible step found.", "warn")
end

-- ============================================================
-- Navigation Buttons – Prev / Next
-- ============================================================
NavBar.nextBtn:SetScript("OnClick", function()
    GuideViewer:SkipToNextVisibleStep()
    IronPath:DebugPrint("Next step: " .. GuideViewer.currentStep, "info")
    GuideViewer:ShowStep()
end)

NavBar.prevBtn:SetScript("OnClick", function()
    GuideViewer:SkipToPreviousVisibleStep()
    IronPath:DebugPrint("Previous step: " .. GuideViewer.currentStep, "info")
    GuideViewer:ShowStep()
end)


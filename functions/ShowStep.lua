-- ============================================================
-- ShowStep.lua – Displays current step in the viewer
-- ============================================================
local IronPath = _G.IronPath
local GuideViewer = _G.IronPathViewer
local NavBar = _G.IronPathNavBar
local FooterBar = _G.IronPathFooter

function GuideViewer:ShowStep()
    local guide = IronPath_CurrentGuide
    if not guide or not guide.steps or #guide.steps == 0 then
        IronPath:DebugPrint("No valid guide or steps found.", "error")
        return
    end

    local steps = _G.IronPath_CachedVisibleSteps or {}
    if #steps == 0 then
        IronPath:DebugPrint("No steps returned from GetVisibleSteps.", "warn")
        return
    end
    -- -- 🔢 Count completed steps
    -- local completed = 0
    -- for _, step in ipairs(steps) do
    --     if step._wasComplete then completed = completed + 1 end
    -- end

    -- -- 🖊️ Update step info UI
    -- if FooterBar and FooterBar.stepInfo then
    --     FooterBar.stepInfo:SetText(completed .. " of " .. #steps .. " completed")
    -- end

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

    GuideViewer:CheckAndAutoAdvance(step)
end


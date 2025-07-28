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

    local totalSteps = #guide.steps
    self.currentStep = math.max(1, math.min(self.currentStep or 1, totalSteps))
    self.highestUnlockedStep = math.max(self.highestUnlockedStep or 1,
                                        self.currentStep)

    -- 🔁 Reparse if debugging is enabled
    if IronPath.db and IronPath.db.profile and IronPath.db.profile.stepDebug then
        local raw = guide.rawSteps and guide.rawSteps[self.currentStep]
        if raw then
            guide.steps[self.currentStep] = IronPath.Parser:ParseSingleStep(raw)
            IronPath:DebugPrint("Re-parsed step " .. self.currentStep, "parse")
        end
    end

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

            if type(obj.completeIf) == "string" then
                local result = IronPath:EvaluateCondition(obj.completeIf)
                if result then
                    obj.isComplete = true
                    IronPath:DebugPrint("Objective completeIf: " ..
                                            obj.completeIf .. " => true",
                                        "advance")
                end
            end

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

    ProcessObjectives(step.objectives, step, false)

    if GuideViewer._stickySteps then
        for _, stickyStep in pairs(GuideViewer._stickySteps) do
            ProcessObjectives(stickyStep.objectives, stickyStep, true)
        end
    end

    if NavBar and NavBar.stepInfo then
        NavBar.stepInfo:SetText("Step " .. self.currentStep .. " of " ..
                                    totalSteps)
    end

    if IronPath.db and IronPath.db.char then
        IronPath.db.char.lastStep = self.currentStep
    end

    if #mainObjectiveList > 0 then
        IronPath:GoToObjective(mainObjectiveList[1])
    else
        IronPath:ClearArrow()
    end

    GuideViewer:CheckAndAutoAdvance(step)
end


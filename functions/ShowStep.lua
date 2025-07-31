-- ============================================================
-- ShowStep.lua – Displays the current guide step only
-- ============================================================
local IronPath = _G.IronPath
local GuideViewer = _G.IronPathViewer
local NavBar = _G.IronPathNavBar

-- ============================
-- Reparse a single step safely
-- ============================
local function ReparseCurrentStep(self, guide, stepIndex)
    local raw = guide.rawSteps and guide.rawSteps[stepIndex]
    if not raw then return guide.steps[stepIndex] end

    local parsed = IronPath.Parser:ParseSingleStep(raw)
    if parsed then
        for _, obj in ipairs(parsed.objectives or {}) do
            if obj.condition and not IronPath:EvaluateCondition(obj.condition) then
                obj._skip = true
            end
        end
        return parsed -- do NOT overwrite guide.steps[stepIndex]
    end
end

-- ============================
-- Process and display objectives
-- ============================
local function ProcessObjectives(self, objectives, parentStep, objectiveList)
    for _, obj in ipairs(objectives or {}) do
        repeat
            if obj._skip then break end

            if type(obj.completeIf) == "string" then
                local result, debugInfo = IronPath:EvaluateCondition(obj.completeIf)
                print("Evaluating Condition: " .. obj.completeIf .. ". Response: " .. tostring(result))
                obj._conditionMatched = debugInfo
                obj.isComplete = result
            end

            local handler = self.ActionHandlers[obj.type]
            if handler and not obj.isComplete then
                local _, _, updated = handler(self, parentStep, true)
                if updated then obj.isComplete = true end
            end

            self:CreateObjectiveLine(obj)

            if obj.coords and not obj.isComplete and
                (obj.type ~= "walk" or
                    (obj.type == "walk" and obj.coords.condition)) then
                table.insert(objectiveList, obj)
            end
        until true
    end
end

-- ============================
-- Main step display function
-- ============================
function GuideViewer:ShowStep()
    print("ShowStep fired")
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

    local step = steps[self.currentStep]
    if not step then
        print("ShowStep: step is nil")
        return
    end
    -- Reparse non-sticky objectives only
    local parsed = ReparseCurrentStep(self, guide, self.currentStep)
    if parsed and parsed.objectives then
        -- Separate sticky objectives
        local stickies = {}
        for _, obj in ipairs(step.objectives or {}) do
            if obj._isSticky then table.insert(stickies, obj) end
        end

        -- Replace with fresh objectives first
        step.objectives = {}
        for _, obj in ipairs(parsed.objectives or {}) do
            if obj.condition and not IronPath:EvaluateCondition(obj.condition) then
                obj._skip = true
            end
            table.insert(step.objectives, obj)
        end

        -- Then re-append stickies to bottom
        for _, sticky in ipairs(stickies) do
            table.insert(step.objectives, sticky)
        end
    end

    if not step then return end

    self.activeStep = step
    self:ResetObjectiveLines()

    local visibleObjectives = {}
    ProcessObjectives(self, step.objectives, step, visibleObjectives)

    if NavBar and NavBar.stepInfo then
        NavBar.stepInfo:SetText("Step " .. self.currentStep .. " of " ..
            totalSteps)
    end

    if IronPath.db and IronPath.db.char then
        IronPath.db.char.lastStep = self.currentStep
    end

    if #visibleObjectives > 0 then
        IronPath:GoToObjective(visibleObjectives[1])

        IronPath_CurrentStep = {
            objectives = visibleObjectives
        }


        -- Place minimap pins for all visible objectives
        IronPath:PlaceMinimapPinsForObjectives(visibleObjectives)

        -- Refresh world map pins if map is open
        if WorldMapFrame:IsShown() then
            WorldMapFrame:RefreshAllDataProviders()
        end
    else
        IronPath:ClearArrow()
        IronPath:ClearMinimapPins()

        -- Remove world map pins if map is open
        if WorldMapFrame:IsShown() then
            WorldMapFrame:RefreshAllDataProviders()
        end
    end
    local allObjectivesComplete = true
    for _, obj in ipairs(step.objectives or {}) do
        if not obj.isComplete then
            allObjectivesComplete = false
            break
        end
    end

    if allObjectivesComplete then
        print("All Objs complete!")
        self:CheckAndAutoAdvance(step)
    end
end

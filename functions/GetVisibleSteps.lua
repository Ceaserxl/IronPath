-- ==================================
-- ======= GetVisibleSteps.lua ======
-- ==================================
local GuideViewer = _G.IronPathViewer
function GuideViewer:GetVisibleSteps(guide)
    if not guide or not guide.steps then return {} end

    local steps = {}
    GuideViewer._stepLabels = {}
    GuideViewer._stickyWindows = {}
    GuideViewer._visibleLabels = {}

    local showDebug = IronPath.db.profile.stepDebug

    -- Pass 1: store label references
    for index, step in ipairs(guide.steps) do
        if step._label then
            GuideViewer._stepLabels[step._label] = step
            GuideViewer._stepLabels[step._label]._labelIndex = index
        end
    end

    -- Pass 2: calculate sticky windows
    for index, step in ipairs(guide.steps) do
        local labels = step.stickystart
        if labels then
            if type(labels) == "string" then labels = {labels} end
            for _, label in ipairs(labels) do
                local targetStep = GuideViewer._stepLabels[label]
                if targetStep then
                    targetStep._wasComplete = false
                    local stopIndex = targetStep._labelIndex or 9999
                    GuideViewer._stickyWindows[label] = {
                        start = index,
                        stop = stopIndex
                    }
                end
            end
        end
    end

    -- Pass 3: build step list with sticky injection
    for index, step in ipairs(guide.steps) do
        local isVisible = true
        local stepCondition, matched = true, nil

        if not IronPath.db.profile.showAllSteps then
            if type(step.condition) == "string" then
                stepCondition, matched =
                    IronPath:EvaluateCondition(step.condition)
            else
                stepCondition = false
                if step.objectives then
                    for _, obj in ipairs(step.objectives) do
                        local result = true
                        if type(obj.condition) == "string" then
                            result = IronPath:EvaluateCondition(obj.condition)
                        end
                        if result then
                            stepCondition = true
                            break
                        end
                    end
                end
            end
        end

        step._conditionMatched = matched
        isVisible = stepCondition

        local filteredStep = {}
        for k, v in pairs(step) do filteredStep[k] = v end
        filteredStep.objectives = {}
        filteredStep._isVisible = isVisible or IronPath.db.profile.showAllSteps

        if step._label then
            GuideViewer._visibleLabels[step._label] = true
        end

        -- Add regular objectives
        if step.objectives then
            for _, obj in ipairs(step.objectives) do
                local passes = true
                if type(obj.condition) == "string" then
                    local result, matched =
                        IronPath:EvaluateCondition(obj.condition)
                    obj._conditionMatched = matched
                    passes = result or IronPath.db.profile.showAllSteps
                end
                if passes then
                    local key = obj.type .. "::" .. (obj.label or "")
                    if not filteredStep._seenObjectives then
                        filteredStep._seenObjectives = {}
                    end
                    if not filteredStep._seenObjectives[key] then
                        filteredStep._seenObjectives[key] = true
                        table.insert(filteredStep.objectives, obj)
                    end

                end
            end
        end

        -- Inject sticky objectives
        local hasStickyObjectives = false

        for label, range in pairs(GuideViewer._stickyWindows) do
            local withinWindow = (index > range.start and index < range.stop)
            local isOwnLabel = (step._label == label)

            if withinWindow and not isOwnLabel then
                local stickyStep = GuideViewer._stepLabels[label]
                if stickyStep and stickyStep.objectives and
                    not stickyStep._wasComplete then
                    local allowSticky = true
                    if type(stickyStep.condition) == "string" and
                        not IronPath.db.profile.showAllSteps then
                        allowSticky = IronPath:EvaluateCondition(
                                          stickyStep.condition)
                    end

                    if allowSticky then
                        local injectedAny = false

                        for _, obj in ipairs(stickyStep.objectives) do
                            if obj.type ~= "walk" and not obj.notinsticky then
                                local passes = true
                                if type(obj.condition) == "string" then
                                    local result, matched =
                                        IronPath:EvaluateCondition(obj.condition)
                                    obj._conditionMatched = matched
                                    passes = result or
                                                 IronPath.db.profile
                                                     .showAllSteps

                                end

                                if passes and not obj.isComplete then
                                    local cloned = CopyTable(obj)
                                    cloned._isSticky = true
                                    local key =
                                        cloned.type .. "::" ..
                                            (cloned.label or "")
                                    if not filteredStep._seenObjectives then
                                        filteredStep._seenObjectives = {}
                                    end
                                    if not filteredStep._seenObjectives[key] then
                                        filteredStep._seenObjectives[key] = true
                                        table.insert(filteredStep.objectives,
                                                     cloned)
                                    end

                                    injectedAny = true
                                end
                            end
                        end

                        hasStickyObjectives = hasStickyObjectives or injectedAny
                    end
                end
            end
        end

        table.insert(steps, filteredStep)
    end

    -- Save to global cache
    _G.IronPath_CachedVisibleSteps = steps

    return steps
end

-- ============================================================
-- Step Filtering and Condition Evaluation
-- ============================================================
local IronPath = _G.IronPath
local GuideViewer = _G.IronPathViewer

-- ============================================================
-- EvaluateCondition – Parses and evaluates guide conditions
-- ============================================================
function IronPath:EvaluateCondition(condition)
    if not condition or type(condition) ~= "string" then
        return true, "no condition"
    end

    -- Remove |notinsticky if it's appended
    condition = condition:gsub("|notinsticky", "")

    -- Normalize legacy |only syntax
    condition = condition:gsub("^%s*|only if%s*", "")
    condition = condition:gsub("^%s*|only%s*", "")
    condition = condition:match("^%s*(.-)%s*$") -- trim spaces

    local class = select(2, UnitClass("player"))
    local race = select(2, UnitRace("player"))
    local faction = UnitFactionGroup("player")
    local level = UnitLevel("player")

    -- Environment for condition evaluation
    local env = {
        level = level,
        faction = faction,
        race = race,
        class = class,
        Class = class,

        -- Race flags
        Human = race == "Human",
        Dwarf = race == "Dwarf",
        NightElf = race == "NightElf",
        Gnome = race == "Gnome",
        Orc = race == "Orc",
        Troll = race == "Troll",
        Tauren = race == "Tauren",
        Undead = race == "Scourge",

        -- Class flags
        Warrior = class == "WARRIOR",
        Warlock = class == "WARLOCK",
        Mage = class == "MAGE",
        Rogue = class == "ROGUE",
        Paladin = class == "PALADIN",
        Priest = class == "PRIEST",
        Druid = class == "DRUID",
        Shaman = class == "SHAMAN",
        Hunter = class == "HUNTER",

        walking = false,

        -- Placeholder flags (for testing)
        hardcore = true,
        selfmade = false,

        -- Booleans
        ["true"] = true,
        ["false"] = false,

        -- Logic helpers
        itemcount = function(id) return GetItemCount(tonumber(id)) or 0 end,
        readyq = function(qid)
            return C_QuestLog and C_QuestLog.IsComplete and
                       C_QuestLog.IsComplete(qid) or false
        end,
        haveq = function(qid)
            return C_QuestLog and C_QuestLog.IsOnQuest and
                       C_QuestLog.IsOnQuest(qid) or false
        end,
        completedq = function(qid)
            return C_QuestLog and C_QuestLog.IsQuestFlaggedCompleted and
                       C_QuestLog.IsQuestFlaggedCompleted(qid) or false
        end,
        subzone = function(name) return GetSubZoneText() == name end,
        GetMoney = GetMoney,

        -- Dev only: block unknown ZGV references
        ZGV = setmetatable({}, {__index = function() return false end}),
        _G = {
            IsIndoors = function()
                return IsIndoors and IsIndoors() or false
            end
        }
    }

    -- Strip "if" at beginning
    condition = condition:gsub("^%s*if%s+", "")

    -- Insert 'and' between identifiers when needed
    local function smartAndInsert(str)
        local logic = {["and"] = true, ["or"] = true, ["not"] = true}
        local tokens, output = {}, {}

        for word in str:gmatch("%S+") do table.insert(tokens, word) end

        for i = 1, #tokens do
            local a, b = tokens[i], tokens[i + 1]
            table.insert(output, a)

            if b then
                local aLogic = logic[a:lower()] or a:match("[()%[%],<>=!]")
                local bLogic = logic[b:lower()] or b:match("[()%[%],<>=!]")
                if not aLogic and not bLogic then
                    table.insert(output, "and")
                end
            end
        end

        return table.concat(output, " ")
    end

    local cleaned = smartAndInsert(condition)
    local fn, err = loadstring("return " .. cleaned)
    if not fn then
        IronPath:DebugPrint(
            "Condition parse error:\nOriginal: " .. condition .. "\nCleaned:  " ..
                cleaned .. "\nError: " .. err, "error")
        return false, "parse error"
    end

    setfenv(fn, env)
    local ok, result = pcall(fn)
    if ok and type(result) == "boolean" then
        return result, cleaned
    else
        IronPath:DebugPrint(
            "Condition eval failed:\nOriginal: " .. condition .. "\nCleaned:  " ..
                cleaned, "warn")
        return false, "eval error"
    end
end

function GuideViewer:GetVisibleSteps()
    local guide = IronPath_CurrentGuide
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
                    -- Clear old completion for reused stickies
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

        if showDebug and step.condition then
            table.insert(filteredStep.objectives, {
                type = "debug",
                label = "[DEBUG] Step Condition: " .. step.condition,
                isComplete = nil,
                blankBox = true
            })
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

                    if showDebug then
                        table.insert(filteredStep.objectives, {
                            type = "debug",
                            label = "[DEBUG] Obj Condition: " .. obj.condition ..
                                " => " .. tostring(result),
                            isComplete = nil,
                            blankBox = true
                        })
                    end
                end
                if passes then
                    table.insert(filteredStep.objectives, obj)
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
                    -- Evaluate step-level condition
                    local allowSticky = true
                    if type(stickyStep.condition) == "string" and
                        not IronPath.db.profile.showAllSteps then
                        allowSticky = IronPath:EvaluateCondition(
                                          stickyStep.condition)
                        if showDebug then
                            table.insert(filteredStep.objectives, {
                                type = "debug",
                                label = "[DEBUG] Sticky Step: " ..
                                    stickyStep.condition .. " => " ..
                                    tostring(allowSticky),
                                isComplete = nil,
                                blankBox = true
                            })
                        end
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

                                    if showDebug then
                                        table.insert(filteredStep.objectives, {
                                            type = "debug",
                                            label = "[DEBUG] Sticky Obj: " ..
                                                obj.condition .. " => " ..
                                                tostring(result),
                                            isComplete = nil,
                                            blankBox = true
                                        })
                                    end
                                end

                                -- Only inject if not complete
                                if passes and not obj.isComplete then
                                    local cloned = CopyTable(obj)
                                    cloned._isSticky = true
                                    table.insert(filteredStep.objectives, cloned)
                                    injectedAny = true
                                end
                            end
                        end

                        -- If at least one objective was injected, mark that we have stickies
                        hasStickyObjectives = hasStickyObjectives or injectedAny
                    end
                end
            end
        end
        table.insert(steps, filteredStep)
    end

    return steps
end


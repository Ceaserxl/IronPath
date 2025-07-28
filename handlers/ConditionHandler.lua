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

    local _, class = UnitClass("player") -- internal class token (e.g. "WARRIOR")
    local _, race = UnitRace("player") -- internal race token (e.g. "Orc")
    local faction = UnitFactionGroup("player") -- "Alliance" or "Horde"
    local level = UnitLevel("player") -- numeric level

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
        hardcore = C_Seasons.GetActiveSeason() == Enum.SeasonID.Hardcore or
            C_Seasons.GetActiveSeason() == Enum.SeasonID.FreshHardcore,
        selfmade = function()
            if C_UnitAuras.GetPlayerAuraBySpellID(431567) then
                return true
            end
            return false
        end,

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
        },
        skill = function(name)
            for i = 1, GetNumSkillLines() do
                local skillName, isHeader, _, skillRank = GetSkillLineInfo(i)
                if not isHeader and skillName == name then
                    return skillRank or 0
                end
            end
            return 0
        end,
        guideflag = function(_) return false end,
        C_Container = C_Container
    }

    -- Strip "if" at beginning
    condition = condition:gsub("^%s*if%s+", "")

    local function smartAndInsert(str)
        local logic = {["and"] = true, ["or"] = true, ["not"] = true}
        local tokens, output = {}, {}

        for word in str:gmatch("%S+") do table.insert(tokens, word) end

        local i = 1
        while i <= #tokens do
            local token = tokens[i]

            -- Handle: not A B → not (A and B)
            if token == "not" then
                local a, b = tokens[i + 1], tokens[i + 2]
                if a and b and not logic[a] and not logic[b] then
                    table.insert(output, "not (" .. a .. " and " .. b .. ")")
                    i = i + 3
                elseif a and not logic[a] then
                    table.insert(output, "not " .. a)
                    i = i + 2
                else
                    table.insert(output, "not")
                    i = i + 1
                end
            else
                table.insert(output, token)
                local a, b = tokens[i], tokens[i + 1]
                if b and not logic[a] and not logic[b] then
                    table.insert(output, "and")
                end
                i = i + 1
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
    if ok then
        return not not result, cleaned
    else
        IronPath:DebugPrint(
            "Condition eval failed:\nOriginal: " .. condition .. "\nCleaned:  " ..
                cleaned, "warn")
        return false, "eval error"
    end
end


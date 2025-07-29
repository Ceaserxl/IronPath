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
        -- Dev only: block unknown ZGV references
        ZGV = setmetatable({}, {__index = function() return false end}),
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
        zone = function(name) return GetZoneText() == name end,
        GetMoney = GetMoney,
        havebuff = function(spellID)
            return C_UnitAuras and C_UnitAuras.GetPlayerAuraBySpellID and
                       C_UnitAuras.GetPlayerAuraBySpellID(spellID) ~= nil or
                       false
        end,

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
        weaponskill = function(code)
            local map = {
                TH_SWORD = "Two-Handed Swords",
                TH_MACE = "Two-Handed Maces",
                TH_AXE = "Two-Handed Axes",
                SWORD = "Swords",
                MACE = "Maces",
                AXE = "Axes",
                DAGGER = "Daggers",
                TH_STAFF = "Staves",
                BOW = "Bows",
                GUN = "Guns",
                CROSSBOW = "Crossbows",
                FIST = "Fist Weapons",
                POLEARM = "Polearms",
                THROWN = "Thrown",
                WAND = "Wands",
                DUALWIELD = "Dual Wield"
            }

            local name = map[code]
            if not name then return 0 end

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
        local comparators = {
            ["<"] = true,
            [">"] = true,
            ["<="] = true,
            [">="] = true,
            ["=="] = true,
            ["~="] = true
        }
        local tokens, output = {}, {}

        for word in str:gmatch("%S+") do table.insert(tokens, word) end

        local i = 1
        while i <= #tokens do
            local token = tokens[i]
            local nextToken = tokens[i + 1]

            table.insert(output, token)

            -- Insert 'and' only between non-logic, non-comparison words
            if nextToken then
                local isTokenLogic = logic[token] or comparators[token]
                local isNextLogic = logic[nextToken] or comparators[nextToken]

                if not isTokenLogic and not isNextLogic then
                    table.insert(output, "and")
                end
            end

            i = i + 1
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


--==============================================================
-- ConditionHandler.lua – Logic for handling step conditions
--==============================================================
local IronPath = _G.IronPath

function IronPath:EvaluateCondition(cond)
    if not cond or cond == "" then return true, {} end

    -- Player info
    local class   = select(2, UnitClass("player"))
    local race    = select(2, UnitRace("player"))
    local faction = UnitFactionGroup("player") or "Neutral"
    local level   = UnitLevel("player")

    -- Flags
    local isHardcore = IronPath_Hardcore or false
    local isSelfmade = IronPath_Selfmade or false

    -- Known variable values
    local vars = {
        WARRIOR = class == "WARRIOR", WARLOCK = class == "WARLOCK",
        ROGUE = class == "ROGUE",     PALADIN = class == "PALADIN",
        MAGE = class == "MAGE",       HUNTER = class == "HUNTER",
        PRIEST = class == "PRIEST",   DRUID = class == "DRUID",
        SHAMAN = class == "SHAMAN",

        HUMAN = race == "Human",      NIGHTELF = race == "NightElf",
        DWARF = race == "Dwarf",      GNOME = race == "Gnome",
        ORC = race == "Orc",          TROLL = race == "Troll",
        UNDEAD = race == "Scourge",   TAUREN = race == "Tauren",

        ALLIANCE = faction == "Alliance", HORDE = faction == "Horde",

        level = level,
        hardcore = isHardcore,
        selfmade = isSelfmade,
    }

    -- Track what was true
    local matched = {}
    for key, val in pairs(vars) do
        if val == true then
            matched[key] = true
        end
    end

    -- STEP 1: Replace variables with true/false
    local expr = cond:gsub("(%f[%a]%w+%f[%A])", function(word)
        local val = vars[word] or vars[word:upper()]
        if val ~= nil then
            return tostring(val)
        end
        return word
    end)

    -- STEP 2: Inject "and" if two booleans are next to each other
    local tokens, rebuilt = {}, {}
    for word in expr:gmatch("%S+") do table.insert(tokens, word) end

    for i = 1, #tokens do
        local w1, w2 = tokens[i], tokens[i + 1]
        table.insert(rebuilt, w1)

        if w2 then
            local isBool = { ["true"] = true, ["false"] = true }
            local needsAnd = isBool[w1] and isBool[w2]
            if needsAnd then table.insert(rebuilt, "and") end
        end
    end

    expr = table.concat(rebuilt, " ")

    -- STEP 3: Compile
    local func, err = loadstring("return " .. expr)
    if not func then
        print("[IronPath] Condition parse error:", cond, expr, err)
        return false, {}
    end

    -- STEP 4: Runtime environment
    local env = {
        itemcount = function(id) return GetItemCount(tonumber(id) or 0) or 0 end,
        subzone = function(name)
            local sub = GetMinimapZoneText()
            return sub and sub:lower():find(name:lower(), 1, true) ~= nil
        end,
        warlockpet = function(name)
            local petName = UnitName("pet")
            return petName and petName:lower():find(name:lower(), 1, true) ~= nil
        end,
        xp = function() return UnitXP("player") or 0 end,
        GetMoney = GetMoney,
        C_Container = C_Container,
        tonumber = tonumber,
        math = math,
    }

    setfenv(func, setmetatable(env, { __index = _G }))

    -- STEP 5: Evaluate
    local ok, result = pcall(func)
    if not ok then
        print("[IronPath] Condition runtime error:", cond, expr, result)
        return false, {}
    end

    -- Return list of matched variable names too
    local matchedList = {}
    for name in cond:gmatch("(%w+)") do
        if matched[name:upper()] then
            table.insert(matchedList, name:upper())
        end
    end

    return result, matchedList
end


--==============================================================
-- Valid Step Conditions (examples for use in step.condition)
--==============================================================

-- Class-based
-- "WARRIOR", "MAGE", "PRIEST", etc.
-- Example:
--   condition = "WARRIOR"
--   condition = "MAGE or PRIEST"

-- Race-based
-- "HUMAN", "NIGHTELF", "DWARF", "GNOME", "ORC", "TROLL", "UNDEAD", "TAUREN"
-- Example:
--   condition = "DWARF and PRIEST"
--   condition = "NIGHTELF or GNOME"

-- Faction-based
-- "ALLIANCE", "HORDE"
-- Example:
--   condition = "HUMAN and ALLIANCE"

-- Level comparisons
-- Uses `level` keyword
-- Example:
--   condition = "level >= 10"
--   condition = "level < 6"
--   condition = "level == 15"

-- Flags
-- "hardcore", "selfmade"
-- Example:
--   condition = "hardcore"
--   condition = "selfmade and level >= 5"
--   condition = "not hardcore"

-- Inventory checks
-- Uses function `itemcount(id)`
-- Example:
--   condition = "itemcount(6948) > 0"    -- Has a Hearthstone
--   condition = "itemcount(1234) >= 4"   -- Has 4 or more of item 1234

-- Subzone match
-- Uses function `subzone("Name")`
-- Example:
--   condition = "subzone('Elwynn Forest')"
--   condition = "subzone('Dun Morogh') and WARRIOR"

-- Pet check (Warlock only)
-- Uses function `warlockpet("Name")`
-- Example:
--   condition = "warlockpet('Imp')"
--   condition = "WARLOCK and warlockpet('Voidwalker')"

-- Experience
-- Uses function `xp()`
-- Example:
--   condition = "xp() > 1200"

-- Money
-- Uses `GetMoney()` (returns copper)
-- Example:
--   condition = "GetMoney() >= 10000"  -- At least 1 gold
--   condition = "GetMoney() < 500"     -- Less than 5 silver

-- Math functions supported:
--   math.floor(), math.ceil(), math.max(), math.min(), etc.
--   condition = "math.floor(xp() / 100) > 10"

-- Boolean logic combinations
-- Use `and`, `or`, `not`
-- Example:
--   condition = "HUMAN and level < 10 and not hardcore"

--==============================================================
-- ConditionHandler.lua – Logic for handling step conditions
--==============================================================
local IronPath = _G.IronPath

function IronPath:EvaluateCondition(cond)
    if not cond or cond == "" then return true end

    -- Player info
    local class   = select(2, UnitClass("player"))
    local race    = select(2, UnitRace("player"))
    local faction = UnitFactionGroup("player") or "Neutral"
    local level   = UnitLevel("player")

    -- Flags
    local isHardcore = IronPath_Hardcore or false
    local isSelfmade = IronPath_Selfmade or false

    -- Known variable substitutions
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

    -- STEP 1: Replace variables first
    local expr = cond:gsub("(%f[%a]%w+%f[%A])", function(word)
        local val = vars[word] or vars[word:upper()]
        if val ~= nil then
            return tostring(val)
        end
        return word
    end)

    -- STEP 2: Inject 'and' between adjacent booleans (true false → true and false)
    local tokens, rebuilt = {}, {}
    for word in expr:gmatch("%S+") do table.insert(tokens, word) end

    for i = 1, #tokens do
        local w1, w2 = tokens[i], tokens[i + 1]
        table.insert(rebuilt, w1)

        if w2 then
            local isBool = { ["true"]=true, ["false"]=true }
            local needsAnd = isBool[w1] and isBool[w2]
            if needsAnd then
                table.insert(rebuilt, "and")
            end
        end
    end

    expr = table.concat(rebuilt, " ")

    -- STEP 3: Compile the expression
    local func, err = loadstring("return " .. expr)
    if not func then
        print("[IronPath] Condition parse error:")
        print("  Raw:   " .. cond)
        print("  Eval:  " .. expr)
        print("  Error: " .. tostring(err))
        return false
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

    -- STEP 5: Run and handle errors
    local ok, result = pcall(func)
    if not ok then
        print("[IronPath] Condition runtime error:")
        print("  Raw:   " .. cond)
        print("  Eval:  " .. expr)
        print("  Error: " .. tostring(result))
        return false
    end

    return result
end

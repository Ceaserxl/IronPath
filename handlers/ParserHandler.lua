-- ============================================================
-- parser.lua – Parser for guide files.
-- ============================================================
IronPath.Parser = {}
ParseDebug = false

------------------------------------------------------------
-- Entry Point
------------------------------------------------------------
function IronPath.Parser:ParseSteps(stepText)
    local parsedSteps = {}
    local rawSteps = {}
    local block = {}

    for line in stepText:gmatch("[^\r\n]+") do
        line = line:match("^%s*(.-)%s*$")
        if line:lower() == "step" then
            if next(block) then
                table.insert(rawSteps, block)
                table.insert(parsedSteps, self:ParseSingleStep(block))
                block = {}
            end
        else
            table.insert(block, line)
        end
    end

    if next(block) then
        table.insert(rawSteps, block)
        table.insert(parsedSteps, self:ParseSingleStep(block))
    end

    return parsedSteps, rawSteps
end

------------------------------------------------------------
-- Step Parsing
------------------------------------------------------------
function IronPath.Parser:ParseSingleStep(lines)
    local step = { objectives = {}, condition = nil }

    for _, line in ipairs(lines) do
        if not line:match("^%s*'") then
            local trimmed = line:match("^%s*(.-)%s*$")

            if trimmed:match("^|only%s") or trimmed:match("^|only if%s") then
                self:HandleStepConditionLine(trimmed, step)
            elseif trimmed:match("^|tip%s") then
                self:HandleTipLine(trimmed, step)
            elseif trimmed:match("^label%s") then
                self:HandleLabelLine(trimmed, step)
            elseif trimmed:match("^stickystart") then
                self:HandleStickyStartLine(trimmed, step)
            elseif trimmed:match("^stickystop") then
                self:HandleStickyStopLine(trimmed, step)
            elseif trimmed:match("^accept%s") then
                self:HandleAcceptLine(trimmed, step)
            elseif trimmed:match("^turnin%s") then
                self:HandleTurninLine(trimmed, step)
            elseif trimmed:match("^collect%s") then
                self:HandleCollectLine(trimmed, step)
            elseif trimmed:match("^kill%s") then
                self:HandleKillLine(trimmed, step)
            elseif trimmed:match("^use%s") then
                self:HandleUseLine(trimmed, step)
            elseif trimmed:match("^talk%s") then
                self:HandleTalkLine(trimmed, step)
            elseif trimmed:match("^click%s") or trimmed:match("^clicknpc%s") then
                self:HandleClickLine(trimmed, step)
            elseif trimmed:match("^learnspell%s") then
                self:HandleLearnSpellLine(trimmed, step)
            elseif trimmed:match("^buy%s") then
                self:HandleBuyLine(trimmed, step)
            elseif trimmed:match("^fpath%s") then
                self:HandleFpathLine(trimmed, step)
            elseif trimmed:match("^trainer%s") then
                self:HandleTrainerLine(trimmed, step)
            elseif trimmed:match("^|?ding%s") then
                trimmed = trimmed:gsub("^|", "") -- strip leading | if present
                self:HandleDingLine(trimmed, step)
            elseif trimmed:match("^home%s") then
                self:HandleHomeLine(trimmed, step)
            elseif trimmed:match("^trash%s") then
                self:HandleTrashLine(trimmed, step)
            elseif trimmed:match("^bank%s") then
                self:HandleBankLine(trimmed, step)
            else
                self:HandleObjectiveLine(trimmed, step)
            end
        end
    end

    return step
end

------------------------------------------------------------
-- Handlers
------------------------------------------------------------

-- ============================================================
-- HandleObjectiveLine
-- ============================================================
-- Usage:
--   1. <label> |q <questID>[/<index>] [|goto <zone> x,y] [#<quantity>#] [|havebuff <name>##id] [|only <cond>]
--   2. <free text> [|popuptext <text>] [|only <cond>] [|notinsticky]
-- Handles both generic fallback lines and advanced quest objective lines.
-- ============================================================
function IronPath.Parser:HandleObjectiveLine(line, step)
    local trimmed = line:match("^%s*(.-)%s*$")

    -- ✅ Strip leading/trailing underscores
    trimmed = trimmed:gsub("^_+", ""):gsub("_+$", "")

    if self:IsLineSkippable(trimmed) then return end

    local metadata = self:ExtractObjectiveMetadata(trimmed)
    local label = self:CleanLabel(trimmed, metadata)
    label = label:gsub('_(["“].-["”])', '%1')
    label = label:gsub('(["“].-["”])_', '%1')
    local obj = self:BuildObjective(metadata, label)
    table.insert(step.objectives, obj)
end

function IronPath.Parser:IsLineSkippable(trimmed)
    if trimmed:match("^|") then return true end

    local skipActions = {
        "accept", "turnin", "collect", "buy", "learn", "train", "use", "click",
        "talk", "home", "complete", "ding", "skillmax", "fpath", "learnspell",
        "gossip", "label", "stickystart", "stickystop", "map", "path", "kill",
        "trash"
    }

    for _, action in ipairs(skipActions) do
        if trimmed:match("^" .. action .. "%s") then return true end
    end

    return false
end

function IronPath.Parser:ExtractObjectiveMetadata(line)
    local meta = {
        isConfirm = line:find("|confirm") or nil,
        next = line:match('|next%s+"([^"]+)"'),
        isVendor = line:find("|vendor") or nil,
        isTrainer = line:find("|trainer") or nil,
        popuptext = line:match("|popuptext%s+([^\r\n|]+)"),
        notinsticky = line:find("|notinsticky") and true or nil,
        condition = line:match("|only if%s+([^|]+)") or
            line:match("|only%s+([^|]+)"),
        completeIf = line:match("|complete%s+([^|]+)") or nil,
        future = line:find("|future") and true or nil,
        notravel = line:match("|notravel([^%a])") and true or nil,
        n = line:match("|n([^%a])") and true or nil
    }

    meta.skillmax, meta.skillmaxLevel =
        line:match("|skillmax%s+([%w%s]+),(%d+)")
    meta.havebuff, meta.buffid = line:match("|havebuff%s+(.+)##(%d+)")
    meta.qid, meta.qindex = line:match("|q%s+(%d+)/?(%d*)")
    meta.gossipID = tonumber(line:match("|gossip%s+(%d+)"))
    meta.gotoZoneRaw, meta.gotoX, meta.gotoY, meta.coordCond = line:match(
        "|goto%s+([%w%s%p]-)%s+(%d+%.?%d*),%s*(%d+%.?%d*)%s*([<>=%s%d]*)")

    if meta.gotoZoneRaw then
        meta.gotoZone, meta.mapIndex = meta.gotoZoneRaw:match("^(.-)/(%d+)$")
        meta.gotoZone = meta.gotoZone and meta.gotoZone:match("^%s*(.-)%s*$") or
            meta.gotoZoneRaw:match("^%s*(.-)%s*$")
    end

    meta.zoneRaw, meta.x, meta.y = line:match(
        "%[([^%[%],]+)%s+(%d+%.?%d*),%s*(%d+%.?%d*)%]")
    meta.rawX, meta.rawY = line:match("%[(%d+%.?%d*),%s*(%d+%.?%d*)%]")

    if meta.zoneRaw then
        meta.zone, meta.zoneMapIndex = meta.zoneRaw:match("^(.-)/(%d+)$")
        meta.zone = meta.zone and meta.zone:match("^%s*(.-)%s*$") or
            meta.zoneRaw:match("^%s*(.-)%s*$")
    end
    if meta.completeIf then
        meta.completeIf = meta.completeIf:match("^%s*(.-)%s*$") -- trim
    end
    meta.isWalk = line:find("|walk")
    meta.isWalkNote = not meta.isWalk and
        ((meta.gotoZone and meta.gotoX and meta.gotoY) or
            (meta.zone and meta.x and meta.y) or
            (meta.rawX and meta.rawY))

    meta.line = line
    return meta
end

function IronPath.Parser:CleanLabel(trimmed, meta)
    local knownTags = {
        popuptext = true,
        notinsticky = true,
        ["only"] = true,
        ["only if"] = true,
        vendor = true,
        complete = true,
        ["goto"] = true,
        q = true,
        walk = true,
        future = true,
        confirm = true,
        skillmax = true,
        gossip = true,
        havebuff = true,
        next = true,
        trainer = true,
        n = true,
        -- TODO:
        count = true,
        zombiewalk = true,
        c = true,
        notravel = true,
        ["or"] = true
    }

    local cleaned = trimmed
    for tag in cleaned:gmatch("|[^|]+") do
        local name = tag:match("^|(%S+)")
        if name and knownTags[name] then
            cleaned = cleaned:gsub("|" .. name .. "%s*[^|]*", "")
        end
    end

    if meta.zoneRaw and meta.x and meta.y then
        local pattern = "%[" ..
            meta.zoneRaw:gsub("%-", "%%-"):gsub("%s", "%%s*") ..
            "%s+" .. meta.x .. "," .. meta.y .. "%]"
        cleaned = cleaned:gsub(pattern, string.format("[%d,%d]",
            tonumber(meta.x),
            tonumber(meta.y)))
    end

    cleaned = cleaned:gsub("%[(%d+%.?%d*),%s*(%d+%.?%d*)%]", function(a, b)
        return string.format("[%d,%d]", tonumber(a), tonumber(b))
    end)

    cleaned = cleaned:gsub("||", "|"):gsub("^_+", ""):gsub("_+$", ""):match(
        "^%s*(.-)%s*$")
    if ParseDebug then cleaned = "[objective] " .. cleaned end
    return cleaned
end

function IronPath.Parser:BuildObjective(meta, label)
    local obj = {
        type = meta.isConfirm and "confirm" or meta.isVendor and "vendor" or
            meta.popuptext and "popuptext" or meta.isWalk and "walk" or
            meta.isWalkNote and "walkNote" or "note",
        label = label ~= "" and label or "(malformed)",
        isComplete = nil,
        blankBox = not meta.isVendor,
        popuptext = meta.popuptext,
        notinsticky = meta.notinsticky,
        condition = meta.condition and meta.condition:match("^%s*(.-)%s*$") or
            nil,
        completeIf = meta.completeIf,
        qid = meta.qid and tonumber(meta.qid) or nil,
        qindex = meta.qindex ~= "" and tonumber(meta.qindex) or nil,
        future = meta.future,
        notravel = meta.notravel,
        n = meta.n,
        next = meta.next
    }
    if meta.gotoZone and meta.gotoX and meta.gotoY then
        obj.coords = {
            zone = meta.gotoZone,
            x = tonumber(meta.gotoX),
            y = tonumber(meta.gotoY),
            mapIndex = meta.mapIndex and tonumber(meta.mapIndex) or nil,
            condition = meta.coordCond and meta.coordCond:match("[<>=%s%d]+") or
                nil,
            walk = true
        }
        obj.label = "|cff80dfff" .. obj.label .. "|r"
    elseif meta.zone and meta.x and meta.y then
        obj.coords = {
            zone = meta.zone,
            x = tonumber(meta.x),
            y = tonumber(meta.y),
            mapIndex = meta.zoneMapIndex and tonumber(meta.zoneMapIndex) or nil,
            walk = true
        }
        obj.label = "|cff80dfff" .. obj.label .. "|r"
    elseif meta.rawX and meta.rawY then
        obj.coords = {
            x = tonumber(meta.rawX),
            y = tonumber(meta.rawY),
            walk = meta.isWalk or nil
        }

        if meta.isWalkNote then
            obj.type = "walkNote"
            -- Strip trailing space + pipe if present
            obj.label = obj.label:gsub("%s+|$", "")

            -- Then colorize
            obj.label = "|cff80dfff" .. obj.label .. "|r"
        elseif meta.isWalk then
            obj.type = "walk"
            -- Strip trailing space + pipe if present
            obj.label = obj.label:gsub("%s+|$", "")

            -- Then colorize
            obj.label = "|cff80dfff" .. obj.label .. "|r"
        end
    end

    if meta.qid then
        obj.type = "obj"
        obj.isComplete = false
        obj.blankBox = false
        obj.label = "|cffff9900" .. obj.label .. "|r"
    end
    if meta.skillmax then
        obj.type = "skillmax"
        obj.skillmax = meta.skillmax
        obj.skillmaxLevel = tonumber(meta.skillmaxLevel)
        obj.isComplete = false
        obj.label = "|cff66ff66" .. obj.label .. "|r"
    end
    if meta.isVendor then
        local npc, npcID = meta.line:match("|vendor%s+(.+)##(%d+)")
        obj.npc = npc
        obj.type = "vendor"
        obj.npcID = tonumber(npcID)
        obj.isComplete = false
        obj.blankBox = true
        obj.label = "|cffffcc00" .. obj.label .. "|r"
    end
    if meta.isTrainer then
        obj.type = "trainer"
        obj.label = "|cff66ff66" .. obj.label .. "|r"
    end
    if meta.isConfirm then
        obj.type = "confirm"
        obj.isComplete = false
        obj.blankBox = true
        if meta.next then obj.next = meta.next end
    end
    if meta.completeIf then
        obj.type = "obj"
        obj.isComplete = false
        obj.blankBox = true
    end
    if meta.havebuff then
        obj.type = "complete"
        obj.completeIf = "havebuff(" .. meta.buffid .. ")"
    end
    if meta.gossipID then obj.type = "note" end
    if meta.n then obj.type = "note" end
    return obj
end

-- ============================================================
-- ============================================================
-- ============================================================
-- ============================================================
-- ============================================================
-- ============================================================
-- ============================================================
-- ============================================================
-- ============================================================
-- ============================================================
-- ============================================================

-- ============================================================
-- HandleStepConditionLine
-- ============================================================
-- Usage: |only <condition> or |only if <condition>
-- Sets the step-level display condition based on the line.
-- Only runs if the line starts with |only or |only if.
-- Does not process embedded conditions on other lines.
-- Example:
--   |only if Human and level >= 6
-- ============================================================
function IronPath.Parser:HandleStepConditionLine(line, step)
    local condition = line:match("^|only if%s+(.+)$") or
        line:match("^|only%s+(.+)$")
    if condition then
        condition = condition:match("^(.-)%s*|") or condition
        step.condition = condition:match("^%s*(.-)%s*$")
    end
end

-- ============================================================
-- HandleTalkLine
-- ============================================================
-- Usage: talk <npcName>##<npcID> [|only <cond>] [|notinsticky]
-- Adds a "talk" objective to speak with a specific NPC.
-- Supports optional display condition and sticky exclusion.
-- Example:
--   talk Marshal Dughan##240 |only if Human and level >= 6 |notinsticky
-- ============================================================
function IronPath.Parser:HandleTalkLine(line, step)
    local npc, id = line:match("^talk%s+(.+)##(%d+)")
    if not npc or not id then return end

    -- Extract and clean optional condition
    local condition = line:match("|only if%s+([^|]+)") or
        line:match("|only%s+([^|]+)")
    if condition then
        condition = condition:gsub("|notinsticky", ""):match("^%s*(.-)%s*$")
    end

    -- Check for notinsticky flag
    local notinsticky = line:find("|notinsticky") ~= nil

    table.insert(step.objectives, {
        type = "talk",
        npc = npc,
        npcID = tonumber(id),
        label = "Talk to |cff00ff00" .. npc .. "|r",
        isComplete = nil,
        blankBox = true,
        condition = condition,
        notinsticky = notinsticky or nil
    })
end

-- ============================================================
-- HandleLabelLine
-- ============================================================
-- Usage: label <labelName>
-- Assigns a label identifier to the step for referencing in sticky logic.
-- Labels are used by stickystart and stickystop to group objectives.
-- Example:
--   label "Collect_Wolf_Meat"
-- ============================================================
function IronPath.Parser:HandleLabelLine(line, step)
    step._label = line:gsub("^label%s+", ""):gsub('"', ''):match("^%s*(.-)%s*$")
end

-- ============================================================
-- HandleStickyStopLine
-- ============================================================
-- Usage: stickystop <label>
-- Marks the end of a sticky block for a given label.
-- Example:
--   stickystop mylabel
-- ============================================================
function IronPath.Parser:HandleStickyStopLine(line, step)
    step.stickystop = step.stickystop or {}
    local label = line:match('^stickystop%s+"(.+)"') or
        line:match('^stickystop%s+(%S+)')
    if label then table.insert(step.stickystop, label) end
end

-- ============================================================
-- HandleStickyStartLine
-- ============================================================
-- Usage: stickystart <label>
-- Marks the beginning of a sticky block for a given label.
-- Example:
--   stickystart mylabel
-- ============================================================
function IronPath.Parser:HandleStickyStartLine(line, step)
    step.stickystart = step.stickystart or {}
    local label = line:match('^stickystart%s+"(.+)"') or
        line:match('^stickystart%s+(%S+)')
    if label then table.insert(step.stickystart, label) end
end

-- ============================================================
-- HandleTrainerLine
-- ============================================================
-- Usage: trainer <NPC Name>##<NPC ID> [|q <questID>] [|only <cond>] [|goto <zone> x,y]
-- Adds a "trainer" objective to the step.
-- Supports quest ID, display condition, and optional coordinates.
-- Example:
--   trainer Thran Khorman##912 |q 3102 |only if Warrior |goto Elwynn Forest 41.09,65.77
-- ============================================================
function IronPath.Parser:HandleTrainerLine(line, step)
    local npc, id = line:match("^trainer%s+(.+)##(%d+)")
    if npc and id then
        local obj = {
            type = "trainer",
            npc = npc,
            npcID = tonumber(id),
            label = "|cff66ff66Train your spells.|r",
            isComplete = false,
            blankBox = false
        }

        -- Optional quest ID
        local qid = line:match("|q%s+(%d+)")
        if qid then obj.qid = tonumber(qid) end

        -- Optional condition
        local condition = line:match("|only if%s+([^\r\n|]+)") or
            line:match("|only%s+([^\r\n|]+)")
        if condition then obj.condition = condition:match("^%s*(.-)%s*$") end

        -- Coordinates inside coords
        local zone, x, y = line:match(
            "|goto%s+([%w%s%'%-/]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
        if zone and x and y then
            obj.coords = {
                zone = zone:gsub("/0$", ""),
                x = tonumber(x),
                y = tonumber(y)
            }
        end

        table.insert(step.objectives, obj)
    end
end

-- ============================================================
-- HandleFpathLine
-- ============================================================
-- Usage: fpath <NPC Name> |goto <zone> x,y
-- Adds a "fpath" objective representing a flight path pickup.
-- Parses optional NPC name and required coordinates.
-- Example:
--   fpath Thorgrum Borrelson |goto Ironforge 55.50,47.75
-- ============================================================
function IronPath.Parser:HandleFpathLine(line, step)
    local fpath = line:match("^fpath%s+([^|]+)") or "Flight Master"
    fpath = fpath:match("^%s*(.-)%s*$") -- trim leading/trailing whitespace

    local zone, x, y = line:match("|goto%s+([%a%s]+)%s+([%d%.]+),([%d%.]+)")
    if zone and x and y then
        local obj = {
            type = "fpath",
            label = "Flight Path: |cff80ccff" .. fpath .. "|r",
            coords = { x = tonumber(x), y = tonumber(y), zone = zone },
            isComplete = false,
            blankBox = false
        }

        table.insert(step.objectives, obj)
    end
end

-- ============================================================
-- HandleHomeLine
-- ============================================================
-- Usage: home <location> [|q <questID>] [|goto <zone> x,y] [|future]
-- Adds a "home" objective to set your hearthstone location.
-- Supports optional quest ID, coordinates, and future flag.
-- Example:
--   home Goldshire |q 54 |goto Elwynn Forest 43.77,65.80
-- ============================================================
function IronPath.Parser:HandleHomeLine(line, step)
    local obj = { type = "home", isComplete = false, blankBox = false }

    -- Hearth location
    local hearthLoc = line:match("^home%s+([^|]+)")
    obj.hearthLocation = hearthLoc and hearthLoc:match("^%s*(.-)%s*$") or
        "Unknown"
    obj.label = "Set Hearth: |cffe066ff" .. obj.hearthLocation .. "|r"



    -- Optional quest ID
    local qid = line:match("|q%s+(%d+)")
    if qid then obj.qid = tonumber(qid) end

    -- Future flag
    if line:find("|future") then obj.future = true end

    -- Coordinates
    local zone, x, y = line:match(
        "|goto%s+([%w%s%'%-/]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
    if zone and x and y then
        obj.coords = {
            zone = zone:match("^%s*(.-)%s*$"),
            x = tonumber(x),
            y = tonumber(y)
        }
    end

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleBuyLine
-- ============================================================
-- Usage: buy <Item Name>##<Item ID> [|n] or [|n=#]
-- Adds a "buy" objective to purchase an item from a vendor.
-- Supports optional quantity using |n or |n=#.
-- Example:
--   buy Skinning Knife##7005 |n=1
-- ============================================================
function IronPath.Parser:HandleBuyLine(line, step)
    local label, itemID = line:match("^buy%s+(.+)##(%d+)")
    if label and itemID then
        local qty = 1

        -- Check if label starts with a number (e.g. "3 Soothing Spices")
        local parsedQty, rest = label:match("^(%d+)%s+(.+)")
        if parsedQty and rest then
            qty = tonumber(parsedQty)
            label = rest
        end

        -- Parse coordinates
        local zone, x, y = line:match(
            "|goto%s+([%w%s%'%-]+)%s+(%d+%.?%d*),(%d+%.?%d*)")

        local displayLabel = (qty > 1) and (qty .. " " .. label) or label

        local obj = {
            type = "buy",
            label = displayLabel,
            item = label,
            itemID = tonumber(itemID),
            quantity = qty,
            isComplete = false,
            blankBox = false
        }

        -- Convert to note if |n is present (must be done after base type assignment)
        if line:find("|n%s") or line:find("|n$") then
            obj.type = "note"
            obj.label = "Buy " .. displayLabel
            obj.isComplete = nil
            obj.blankBox = false
        end

        if zone and x and y then
            obj.coords = {
                zone = zone:match("^%s*(.-)%s*$"),
                x = tonumber(x),
                y = tonumber(y)
            }
        end

        table.insert(step.objectives, obj)
    end
end

-- ============================================================
-- HandleKillLine
-- ============================================================
-- Usage: kill [<quantity>] <Target Name>##<NPC ID> [|q <questID>/<index>] [|goto <zone> x,y] [|future]
-- Adds a "kill" objective to defeat a specified target.
-- Supports optional quantity, quest linkage, coordinates, and future flag.
-- If no quest ID is provided, falls back to a colored note.
-- Example:
--   kill 3 Defias Thug##38 |q 18/1 |goto Elwynn Forest 54.2,40.8
--   kill Hogger##448 |goto Elwynn Forest 26.4,93.6
-- ============================================================
function IronPath.Parser:HandleKillLine(line, step)
    local obj = { type = "kill", isComplete = false, blankBox = false }

    -- Quantity (optional)
    local qty, rest = line:match("^kill%s+(%d+)%s+(.+)")
    if qty and rest then
        obj.quantity = tonumber(qty)
        obj.blankBox = false
        obj.target = rest:match("(.+)##") or rest:match("(.+)")
    else
        obj.target = line:match("^kill%s+(.+)##") or line:match("^kill%s+(.+)")
    end

    if obj.quantity and obj.target then
        obj.label = "Kill |cffff4444" .. obj.quantity .. " " .. obj.target .. "|r"
    else
        obj.label = "|cffff4444" .. obj.target .. "|r"
    end

    -- NPC ID
    local npcID = line:match("##(%d+%+?)")
    if npcID then
        obj.npcID = npcID
        if npcID:sub(-1) == "+" then
            obj.npcID = tonumber(npcID:match("^(%d+)"))
        else
            obj.npcID = tonumber(npcID)
        end
    end

    -- Quest ID and index
    local qid, qindex = line:match("|q%s+(%d+)/?(%d*)")
    if qid then
        obj.qid = tonumber(qid)
        if qindex and qindex ~= "" then obj.qindex = tonumber(qindex) end
    else
        obj.type = "note"
        obj.label =
            "Kill |cffff4444" .. (obj.label or obj.target or "unknown") .. "|r"
        obj.isComplete = nil
        obj.blankBox = false
    end
    -- Coordinates
    local zone, x, y = line:match(
        "|goto%s+([%w%s%'%-]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
    if zone and x and y then
        obj.coords = {
            zone = zone:match("^%s*(.-)%s*$"),
            x = tonumber(x),
            y = tonumber(y)
        }
    end

    -- Flags
    if line:find("|notinsticky") then obj.notinsticky = true end
    if line:find("|future") then obj.future = true end

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleDingLine
-- ============================================================
-- Usage: ding <level>[,<xp>] [|goto <zone> x,y]
-- Adds a "ding" objective to reach a specific level (and optional XP).
-- Supports optional coordinates for display purposes.
-- Example:
--   ding 12 |goto Loch Modan 35.69,31.78
--   ding 11,8500
-- ============================================================
function IronPath.Parser:HandleDingLine(line, step)
    local level, xp = line:match("^ding%s+(%d+),?(%d*)")
    if level then
        local label = "Reach Level " .. level
        if xp and xp ~= "" then label = label .. " and " .. xp .. "xp" end

        local obj = {
            type = "ding",
            level = tonumber(level),
            xp = tonumber(xp) or nil,
            label = "|cffffcc00" .. label .. "|r",
            isComplete = false,
            blankBox = false
        }

        -- Parse |goto if present
        local zone, x, y = line:match(
            "|goto%s+([%w%s%'%-]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
        if zone and x and y then
            obj.coords = {
                zone = zone:match("^%s*(.-)%s*$"),
                x = math.floor(tonumber(x)),
                y = math.floor(tonumber(y))
            }
        end

        -- Parse |only or |only if condition
        obj.condition = line:match("|only if%s+([^\r\n|]+)") or
            line:match("|only%s+([^\r\n|]+)")

        table.insert(step.objectives, obj)
    end
end

-- ============================================================
-- HandleTurninLine
-- ============================================================
-- Usage: turnin <Quest Name>##<Quest ID> [|only <cond>] [|goto <zone> x,y]
-- Adds a "turnin" objective to complete a quest at a target NPC.
-- Supports optional display condition and coordinates.
-- Example:
--   turnin Filthy Paws##307 |only if level >= 11 |goto Loch Modan 24.76,18.40
-- ============================================================
function IronPath.Parser:HandleTurninLine(line, step)
    local quest, qid = line:match("^turnin%s+(.+)##(%d+)")
    if quest and qid then
        local obj = {
            type = "turnin",
            quest = quest,
            qid = tonumber(qid),
            label = "Turn in |cffffcc00" .. quest .. "|r",
            isComplete = false,
            blankBox = false
        }

        -- Coordinates
        local zone, x, y = line:match(
            "|goto%s+([%w%s%'%-/]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
        if zone and x and y then
            obj.coords = {
                zone = zone:match("^%s*(.-)%s*$"),
                x = tonumber(x),
                y = tonumber(y)
            }
        end

        -- Condition
        local condition = line:match("|only if%s+(.+)$") or
            line:match("|only%s+(.+)$")
        if condition then obj.condition = condition:match("^%s*(.-)%s*$") end

        table.insert(step.objectives, obj)
    end
end

-- ============================================================
-- HandleUseLine
-- ============================================================
-- Usage: use <Item Name>##<Item ID>
-- Adds a "use" objective to use a specific item.
-- Supports item identification and cleaned display label.
-- Example:
--   use the Flare Gun##13250
-- ============================================================
function IronPath.Parser:HandleUseLine(line, step)
    local fullItem, id = line:match("^use%s+(.+)##(%d+)")
    if fullItem and id then
        local item = fullItem:gsub("^the%s+", "") -- strip "the" only for item storage
        table.insert(step.objectives, {
            type = "use",
            item = item,
            itemID = tonumber(id),
            label = "Use " .. fullItem,
            isComplete = nil,
            blankBox = true
        })
    end
end

-- ============================================================
-- HandleCollectLine
-- ============================================================
-- Usage: collect [<quantity>] <Item Name>##<Item ID> [|q <questID>/<index>] [|goto <zone> x,y]
-- Adds a "collect" objective to obtain a specific item.
-- Supports quantity, item ID, quest linkage, and coordinates.
-- Example:
--   collect 8 Tough Wolf Meat##750 |q 33/1 |goto Elwynn Forest 46.38,38.58
-- ============================================================
function IronPath.Parser:HandleCollectLine(line, step)
    -- Extract the main part (before any |tags)
    local baseLine = line:match("^(.-)|") or line

    -- Try to get quantity and item
    local quantity, item = baseLine:match("^collect%s+(%d+)%s+(.+)")
    if not item then
        item = baseLine:match("^collect%s+(.+)")
        quantity = "1"
    end
    if not item then return end

    -- Extract itemID and clean the item name
    local id = item:match("##(%d+)")
    if id then item = item:gsub("##%d+", ""):trim() end

    local num = tonumber(quantity)

    local obj = {
        type = "collect",
        item = item,
        quantity = num,
        label = "Collect: |cffff9900" .. item .. "|r",
        itemID = id and tonumber(id) or nil,
        isComplete = false,
        blankBox = false
    }

    if num and num > 1 then
        obj.label = "Collect: |cffff9900" .. quantity .. " " .. item .. "|r"
    end

    -- Extract quest ID and index
    local qid, qindex = line:match("|q%s+(%d+)/?(%d*)")
    if qid then
        obj.qid = tonumber(qid)
        if qindex and qindex ~= "" then obj.qindex = tonumber(qindex) end
    end

    -- Extract coordinates
    local zone, x, y = line:match(
        "|goto%s+([%w%s%'%-/]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
    if zone and x and y then
        obj.coords = { zone = zone:trim(), x = tonumber(x), y = tonumber(y) }
    end

    -- Extract |only and |only if conditions
    obj.condition = line:match("|only if%s+([^\r\n|]+)") or
        line:match("|only%s+([^\r\n|]+)")

    -- Convert to note if |n is present
    if line:find("|n%s") or line:find("|n$") then
        obj.type = "note"
        obj.label = "Collect: |cffFFD933" .. obj.label .. "|r"
        obj.isComplete = nil
        obj.blankBox = false
    end

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleClickLine
-- ============================================================
-- Usage: click <Object Name>##<Object ID>
-- Adds a "click" objective to interact with an object in the world.
-- Cleans up ID and extra symbols from the display label.
-- Example:
--   click Sealed Supply Crate##12345
-- ============================================================
function IronPath.Parser:HandleClickLine(line, step)
    local label = line:match("^clicknpc%s+(.+)") or line:match("^click%s+(.+)")
    if not label then return end

    -- Extract object ID from ##object=123 or ##123
    local objectID = label:match("##object=(%d+)")
    if not objectID then objectID = label:match("##(%d+)") end

    -- Clean label: remove ##object=123, ##123, trailing + and spaces
    label = label:gsub("##object=%d+", ""):gsub("##%d+", ""):gsub("+$", "")
        :gsub("%s+$", "")

    table.insert(step.objectives, {
        type = "click",
        label = "Click |cffffd933" .. label .. "|r",
        objectID = tonumber(objectID),
        isComplete = nil,
        blankBox = true
    })
end

-- ============================================================
-- HandleLearnSpellLine
-- ============================================================
-- Usage: learnspell <Spell Name>##<Spell ID> [|goto <zone> x,y]
-- Adds a "learnspell" objective for learning a specific spell.
-- Supports spell ID and optional trainer coordinates.
-- Example:
--   learnspell Charge##100 |goto Elwynn Forest 41.09,65.77
-- ============================================================
function IronPath.Parser:HandleLearnSpellLine(line, step)
    local spell, id = line:match("^learnspell%s+(.+)##(%d+)")
    if spell and id then
        local obj = {
            type = "learnspell",
            spell = spell,
            spellID = tonumber(id),
            label = "Learn |cff66ff66" .. spell .. "|r",
            isComplete = false,
            blankBox = false
        }

        -- Coordinates
        local zone, x, y = line:match(
            "|goto%s+([%w%s%'%-/]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
        if zone and x and y then
            obj.coords = {
                zone = zone:match("^%s*(.-)%s*$"),
                x = tonumber(x),
                y = tonumber(y)
            }
        end

        table.insert(step.objectives, obj)
    end
end

-- ============================================================
-- HandleAcceptLine
-- ============================================================
-- Usage: accept <Quest Name>##<Quest ID> [|only <cond>] [|goto <zone> x,y]
-- Adds an "accept" objective to pick up a quest from an NPC.
-- Supports optional condition and questgiver coordinates.
-- Example:
--   accept Filthy Paws##307 |only if level >= 10 |goto Loch Modan 24.76,18.40
-- ============================================================
function IronPath.Parser:HandleAcceptLine(line, step)
    local quest, qid = line:match("^accept%s+(.+)##(%d+)")
    if quest and qid then
        local obj = {
            type = "accept",
            quest = quest,
            qid = tonumber(qid),
            label = "Accept |cffffcc00" .. quest .. "|r",
            isComplete = false,
            blankBox = false
        }

        -- Coordinates
        local zone, x, y = line:match(
            "|goto%s+([%w%s%'%-/]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
        if zone and x and y then
            obj.coords = {
                zone = zone:match("^%s*(.-)%s*$"),
                x = tonumber(x),
                y = tonumber(y)
            }
        end

        -- Optional condition
        local condition = line:match("|only%s+(.+)")
        if condition then obj.condition = condition end

        table.insert(step.objectives, obj)
    end
end

-- ============================================================
-- HandleWalkLine
-- ============================================================
-- Usage: [<zone> x, y] or [x, y]
-- Adds a "walk" objective representing a coordinate-based movement step.
-- Supports both zone-tagged and zone-less formats.
-- Example:
--   [Loch Modan 23.53,17.89]
--   [45.82,44.02]
-- ============================================================
function IronPath.Parser:HandleWalkLine(line, step)
    -- Case 1: [Zone x, y]
    local zone, x, y = line:match("^%[(.-)%s+(%d+%.?%d*),%s*(%d+%.?%d*)%]$")
    if zone and x and y then
        x = math.floor(tonumber(x))
        y = math.floor(tonumber(y))

        local labelText = ParseDebug and
            string.format("[walk] %s [%s, %s]", zone, x, y) or
            string.format("%s [%s, %s]", zone, x, y)

        table.insert(step.objectives, {
            type = "walk",
            label = "|cff80dfff" .. labelText .. "|r",
            coords = { zone = zone:match("^%s*(.-)%s*$"), x = x, y = y },
            isComplete = nil,
            blankBox = true
        })
        return
    end

    -- Case 2: [x, y] (no zone)
    x, y = line:match("^%[(%d+%.?%d*),%s*(%d+%.?%d*)%]$")
    if x and y then
        x = math.floor(tonumber(x))
        y = math.floor(tonumber(y))

        local labelText = ParseDebug and
            string.format("[walk] [%s, %s]", x, y) or
            string.format("[%s, %s]", x, y)

        table.insert(step.objectives, {
            type = "walk",
            label = "|cff80dfff" .. labelText .. "|r",
            coords = { x = x, y = y },
            isComplete = nil,
            blankBox = true
        })
    end
end

-- ============================================================
-- HandleTrashLine
-- ============================================================
-- Usage: trash <Item Name>##<Item ID>
-- Adds a "trash" objective to discard a specific item.
-- Used to clean up inventory space during the guide.
-- Example:
--   trash Bent Shield##1220
-- ============================================================
function IronPath.Parser:HandleTrashLine(line, step)
    local item, id = line:match("^trash%s+(.+)##(%d+)")
    if item and id then
        table.insert(step.objectives, {
            type = "trash",
            item = item,
            itemID = tonumber(id),
            label = "|cffffb000" .. item .. "|r",
            isComplete = false,
            blankBox = false
        })
    end
end

-- ============================================================
-- HandleBankLine
-- ============================================================
-- Usage: bank <Item Name>##<Item ID>
-- Adds a "bank" objective to store a specific item in the bank.
-- Used to ensure the item is no longer in player's bags.
-- Example:
--   bank Copper Ore##2770
-- ============================================================
function IronPath.Parser:HandleBankLine(line, step)
    local item, id = line:match("^bank%s+(.+)##(%d+)")
    if item and id then
        table.insert(step.objectives, {
            type = "bank",
            item = item,
            itemID = tonumber(id),
            label = item,
            isComplete = false,
            blankBox = false
        })
    end
end

-- ============================================================
-- HandleTipLine
-- ============================================================
-- Usage: |tip <text> [|only if <cond>] [|notinsticky]
-- Adds a "tip" objective to provide helpful information to the player.
-- Supports optional display condition and sticky exclusion.
-- Example:
--   |tip This cave is dangerous. Stay near the wall. |only if level < 10
-- ============================================================
function IronPath.Parser:HandleTipLine(line, step)
    -- Extract optional flags
    local condition = line:match("|only if%s+([^|]+)")
    local notinsticky = line:find("|notinsticky")

    -- Clean the line by removing known tags
    local cleaned = line
    cleaned = cleaned:gsub("|only if%s+[^|]+", "")
    cleaned = cleaned:gsub("|notinsticky", "")
    cleaned = cleaned:match("^|tip%s+(.+)$") or ""
    cleaned = cleaned:match("^%s*(.-)%s*$")

    -- Skip if nothing left
    if not cleaned:match("%S") then return end

    -- Final object
    local obj = {
        type = "tip",
        label = "|cffaaaaaa" .. cleaned .. "|r",
        isComplete = nil,
        blankBox = true,
        condition = condition and condition:match("^%s*(.-)%s*$") or nil,
        notinsticky = notinsticky and true or nil
    }

    table.insert(step.objectives, obj)
end

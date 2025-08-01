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
    local trimmed = line:match("^%s*(.-)%s*$"):gsub("^_+", ""):gsub("_+$", "")
    if self:IsLineSkippable(trimmed) then return end

    local metadata = self:ExtractObjectiveMetadata(trimmed)
    local label = self:CleanLabel(trimmed, metadata)
        :gsub('_(["“].-["”])', '%1')
        :gsub('(["“].-["”])_', '%1')

    local obj = self:BuildObjective(metadata, label)
    table.insert(step.objectives, obj)
end

function IronPath.Parser:IsLineSkippable(trimmed)
    if trimmed:find("^|") then return true end

    local skipActions = {
        accept = true,
        turnin = true,
        collect = true,
        buy = true,
        learn = true,
        train = true,
        use = true,
        click = true,
        talk = true,
        home = true,
        complete = true,
        ding = true,
        skillmax = true,
        fpath = true,
        learnspell = true,
        gossip = true,
        label = true,
        stickystart = true,
        stickystop = true,
        map = true,
        path = true,
        kill = true,
        trash = true
    }

    local action = trimmed:match("^(%S+)")
    return skipActions[action] or false
end

function IronPath.Parser:ExtractObjectiveMetadata(line)
    local meta = {
        isConfirm   = line:find("|confirm") or nil,
        next        = line:match('|next%s+"([^"]+)"'),
        isVendor    = line:find("|vendor") or nil,
        isTrainer   = line:find("|trainer") or nil,
        popuptext   = line:match("|popuptext%s+([^\r\n|]+)"),
        notinsticky = line:find("|notinsticky") and true or nil,
        condition   = line:match("|only if%s+([^|]+)") or line:match("|only%s+([^|]+)"),
        completeIf  = line:match("|complete%s+([^|]+)"),
        future      = line:find("|future") and true or nil,
        notravel    = line:match("|notravel([^%a])") and true or nil,
        n           = line:match("|n([^%a])") and true or nil,
        gossipID    = tonumber(line:match("|gossip%s+(%d+)")),
        isWalk      = line:find("|walk"),
        line        = line
    }

    -- Skill
    meta.skillmax, meta.skillmaxLevel = line:match("|skillmax%s+([%w%s]+),(%d+)")

    -- Buff
    meta.havebuff, meta.buffid = line:match("|havebuff%s+(.+)##(%d+)")

    -- Quest
    meta.qid, meta.qindex = line:match("|q%s+(%d+)/?(%d*)")
    meta.qid = meta.qid and tonumber(meta.qid) or nil
    meta.qindex = meta.qindex ~= "" and tonumber(meta.qindex) or nil

    -- GoTo coordinates
    meta.gotoZoneRaw, meta.gotoX, meta.gotoY, meta.coordCond =
        line:match("|goto%s+([%w%s%p]-)%s+(%d+%.?%d*),%s*(%d+%.?%d*)%s*([<>=%s%d]*)")
    if meta.gotoZoneRaw then
        meta.gotoZone, meta.mapIndex = meta.gotoZoneRaw:match("^(.-)/(%d+)$")
        meta.gotoZone = (meta.gotoZone or meta.gotoZoneRaw):match("^%s*(.-)%s*$")
        meta.mapIndex = meta.mapIndex and tonumber(meta.mapIndex) or nil
    end

    -- Bracket coordinates
    meta.zoneRaw, meta.x, meta.y = line:match("%[([^%[%],]+)%s+(%d+%.?%d*),%s*(%d+%.?%d*)%]")
    if meta.zoneRaw then
        meta.zone, meta.zoneMapIndex = meta.zoneRaw:match("^(.-)/(%d+)$")
        meta.zone = (meta.zone or meta.zoneRaw):match("^%s*(.-)%s*$")
        meta.zoneMapIndex = meta.zoneMapIndex and tonumber(meta.zoneMapIndex) or nil
    end

    -- Raw x,y fallback
    meta.rawX, meta.rawY = line:match("%[(%d+%.?%d*),%s*(%d+%.?%d*)%]")

    -- Walk note detection
    meta.isWalkNote = not meta.isWalk and (
        (meta.gotoZone and meta.gotoX and meta.gotoY) or
        (meta.zone and meta.x and meta.y) or
        (meta.rawX and meta.rawY)
    )

    -- Clean up condition
    if meta.completeIf then
        meta.completeIf = meta.completeIf:match("^%s*(.-)%s*$")
    end

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
        count = true,
        zombiewalk = true,
        c = true,
        notravel = true,
        ["or"] = true
    }

    local cleaned = trimmed

    -- Remove known |tags
    for tag in cleaned:gmatch("|[^|]+") do
        local name = tag:match("^|(%S+)")
        if name and knownTags[name] then
            cleaned = cleaned:gsub("|" .. name .. "%s*[^|]*", "")
        end
    end

    -- Normalize [Zone x,y] and [x,y] to [x,y]
    if meta.zoneRaw and meta.x and meta.y then
        local pattern = "%[" ..
            meta.zoneRaw:gsub("[-()%%+.*?[^$]", "%%%0"):gsub("%s", "%%s*") ..
            "%s+" .. meta.x .. "," .. meta.y .. "%]"
        cleaned = cleaned:gsub(pattern, string.format("[%d,%d]", tonumber(meta.x), tonumber(meta.y)))
    end

    cleaned = cleaned:gsub("%[(%d+%.?%d*),%s*(%d+%.?%d*)%]", function(a, b)
        return string.format("[%d,%d]", tonumber(a), tonumber(b))
    end)

    cleaned = cleaned:gsub("||", "|"):match("^%s*(.-)%s*$")

    if ParseDebug then
        cleaned = "[objective] " .. cleaned
    end

    return cleaned
end

function IronPath.Parser:BuildObjective(meta, label)
    local obj = {
        type = "note",
        label = label ~= "" and label or "(malformed)",
        isComplete = nil,
        blankBox = not meta.isVendor,
        popuptext = meta.popuptext,
        notinsticky = meta.notinsticky,
        condition = meta.condition and meta.condition:match("^%s*(.-)%s*$") or nil,
        completeIf = meta.completeIf,
        qid = meta.qid and tonumber(meta.qid) or nil,
        qindex = meta.qindex ~= "" and tonumber(meta.qindex) or nil,
        future = meta.future,
        notravel = meta.notravel,
        n = meta.n,
        next = meta.next
    }

    if meta.isWalkNote then
        obj.type = "walkNote"
    end
    -- Special override types
    if meta.qid then
        obj.type = "obj"
        obj.isComplete = false
        obj.blankBox = false
    end
    -- Primary type detection
    if meta.isVendor then
        local npc, npcID = meta.line:match("|vendor%s+(.+)##(%d+)")
        obj.type = "vendor"
        obj.npc = npc
        obj.npcID = tonumber(npcID)
        obj.isComplete = false
        obj.blankBox = true
    elseif meta.isTrainer then
        obj.type = "trainer"
    elseif meta.popuptext then
        obj.type = "popuptext"
    elseif meta.isWalk then
        obj.type = "walk"
    end

    -- Coordinates
    if meta.gotoZone and meta.gotoX and meta.gotoY then
        obj.coords = {
            zone = meta.gotoZone,
            x = tonumber(meta.gotoX),
            y = tonumber(meta.gotoY),
            mapIndex = meta.mapIndex and tonumber(meta.mapIndex) or nil,
            condition = meta.coordCond and meta.coordCond:match("[<>=%s%d]+") or nil,
            walk = true
        }
    elseif meta.zone and meta.x and meta.y then
        obj.coords = {
            zone = meta.zone,
            x = tonumber(meta.x),
            y = tonumber(meta.y),
            mapIndex = meta.zoneMapIndex and tonumber(meta.zoneMapIndex) or nil,
            walk = true
        }
    elseif meta.rawX and meta.rawY then
        obj.coords = {
            x = tonumber(meta.rawX),
            y = tonumber(meta.rawY),
            walk = meta.isWalk or nil
        }
    end
    if meta.skillmax then
        obj.type = "skillmax"
        obj.skillmax = meta.skillmax
        obj.skillmaxLevel = tonumber(meta.skillmaxLevel)
        obj.isComplete = false
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
    if meta.gossipID or meta.n then
        obj.type = "note"
    end
    if meta.isConfirm then
        obj.type = "confirm"
        obj.isComplete = false
        obj.blankBox = true
    end

    return obj
end

-- ============================================================
-- ============================================================
-- ============================================================

-- ============================================================
-- HandleTalkLine
-- ============================================================
function IronPath.Parser:HandleTalkLine(line, step)
    local npc, id = line:match("^talk%s+(.+)##(%d+)")
    if not npc or not id then return end

    local obj = {
        type = "talk",
        npc = npc:trim(),
        npcID = tonumber(id),
        isComplete = nil,
        blankBox = true,
    }

    -- Extract condition
    local condition = line:match("|only if%s+([^|]+)") or line:match("|only%s+([^|]+)")
    if condition then
        obj.condition = condition:gsub("|notinsticky", ""):match("^%s*(.-)%s*$")
    end

    -- Handle |notinsticky
    if line:find("|notinsticky") then
        obj.notinsticky = true
    end

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleAcceptLine
-- ============================================================
function IronPath.Parser:HandleAcceptLine(line, step)
    local quest, qid = line:match("^accept%s+(.+)##(%d+)")
    if not quest or not qid then return end

    local obj = {
        type = "accept",
        quest = quest:trim(),
        qid = tonumber(qid),
        isComplete = false,
        blankBox = false,
    }

    -- Coordinates
    local zone, x, y = line:match("|goto%s+([%w%s%'%-/]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
    if zone and x and y then
        obj.coords = {
            zone = zone:trim(),
            x = tonumber(x),
            y = tonumber(y),
        }
    end

    -- Optional condition
    local condition = line:match("|only if%s+([^|]+)") or line:match("|only%s+([^|]+)")
    if condition then
        obj.condition = condition:match("^%s*(.-)%s*$")
    end

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleTurninLine
-- ============================================================
function IronPath.Parser:HandleTurninLine(line, step)
    local quest, qid = line:match("^turnin%s+(.+)##(%d+)")
    if not quest or not qid then return end

    local obj = {
        type = "turnin",
        quest = quest:trim(),
        qid = tonumber(qid),
        isComplete = false,
        blankBox = false,
    }

    -- Coordinates
    local zone, x, y = line:match("|goto%s+([%w%s%'%-/]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
    if zone and x and y then
        obj.coords = {
            zone = zone:trim(),
            x = tonumber(x),
            y = tonumber(y)
        }
    end

    -- Condition
    local condition = line:match("|only if%s+([^|]+)") or line:match("|only%s+([^|]+)")
    if condition then
        obj.condition = condition:match("^%s*(.-)%s*$")
    end

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleTrainerLine
-- ============================================================
function IronPath.Parser:HandleTrainerLine(line, step)
    local npc, id = line:match("^trainer%s+(.+)##(%d+)")
    if not npc or not id then return end

    local obj = {
        type = "trainer",
        npc = npc:trim(),
        npcID = tonumber(id),
        isComplete = false,
        blankBox = false,
    }

    -- Optional quest ID
    local qid = line:match("|q%s+(%d+)")
    if qid then obj.qid = tonumber(qid) end

    -- Optional condition
    local condition = line:match("|only if%s+([^|]+)") or line:match("|only%s+([^|]+)")
    if condition then
        obj.condition = condition:match("^%s*(.-)%s*$")
    end

    -- Optional coordinates
    local zone, x, y = line:match("|goto%s+([%w%s%'%-/]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
    if zone and x and y then
        obj.coords = {
            zone = zone:gsub("/0$", ""),
            x = tonumber(x),
            y = tonumber(y)
        }
    end

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleFpathLine
-- ============================================================
function IronPath.Parser:HandleFpathLine(line, step)
    local fpath = line:match("^fpath%s+([^|]+)") or "Flight Master"
    fpath = fpath:match("^%s*(.-)%s*$") -- trim

    local zone, x, y = line:match("|goto%s+([%a%s]+)%s+([%d%.]+),([%d%.]+)")
    if zone and x and y then
        local obj = {
            type = "fpath",
            name = fpath,
            coords = {
                zone = zone:trim(),
                x = tonumber(x),
                y = tonumber(y),
            },
            isComplete = false,
            blankBox = false,
        }

        table.insert(step.objectives, obj)
    end
end

-- ============================================================
-- HandleHomeLine
-- ============================================================
function IronPath.Parser:HandleHomeLine(line, step)
    local obj = {
        type = "home",
        isComplete = false,
        blankBox = false,
    }

    -- Hearth location
    local hearthLoc = line:match("^home%s+([^|]+)")
    obj.hearthLocation = hearthLoc and hearthLoc:match("^%s*(.-)%s*$") or "Unknown"

    -- Optional quest ID
    local qid = line:match("|q%s+(%d+)")
    if qid then obj.qid = tonumber(qid) end

    -- Future flag
    if line:find("|future") then obj.future = true end

    -- Optional coordinates
    local zone, x, y = line:match("|goto%s+([%w%s%'%-/]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
    if zone and x and y then
        obj.coords = {
            zone = zone:trim(),
            x = tonumber(x),
            y = tonumber(y),
        }
    end

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleBuyLine
-- ============================================================
function IronPath.Parser:HandleBuyLine(line, step)
    local rawLabel, itemID = line:match("^buy%s+(.+)##(%d+)")
    if not rawLabel or not itemID then return end

    local qty = 1
    local item = rawLabel:trim()

    -- Check if label starts with a quantity (e.g., "3 Soothing Spices")
    local parsedQty, rest = item:match("^(%d+)%s+(.+)")
    if parsedQty and rest then
        qty = tonumber(parsedQty)
        item = rest:trim()
    end

    local obj = {
        type = "buy",
        item = item,
        itemID = tonumber(itemID),
        quantity = qty,
        isComplete = false,
        blankBox = false,
    }

    -- Optional coordinates
    local zone, x, y = line:match("|goto%s+([%w%s%'%-]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
    if zone and x and y then
        obj.coords = {
            zone = zone:trim(),
            x = tonumber(x),
            y = tonumber(y)
        }
    end

    -- Convert to note if |n present
    if line:find("|n%s") or line:find("|n$") then
        obj.type = "note"
        obj.from = "buy"
        obj.isComplete = nil
    end

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleKillLine
-- ============================================================
function IronPath.Parser:HandleKillLine(line, step)
    local obj = {
        type = "kill",
        isComplete = false,
        blankBox = false,
    }

    -- Quantity and target
    local qty, rest = line:match("^kill%s+(%d+)%s+(.+)")
    if qty and rest then
        obj.quantity = tonumber(qty)
        obj.target = rest:match("(.+)##") or rest:trim()
    else
        obj.target = line:match("^kill%s+(.+)##") or line:match("^kill%s+(.+)")
    end

    -- NPC ID
    local npcID = line:match("##(%d+%+?)")
    if npcID then
        if npcID:sub(-1) == "+" then
            obj.npcID = tonumber(npcID:match("^(%d+)"))
        else
            obj.npcID = tonumber(npcID)
        end
    end

    -- Quest tracking info
    local qid, qindex = line:match("|q%s+(%d+)/?(%d*)")
    if qid then
        obj.qid = tonumber(qid)
        if qindex and qindex ~= "" then
            obj.qindex = tonumber(qindex)
        end
    end

    -- Coordinates
    local zone, x, y = line:match("|goto%s+([%w%s%'%-]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
    if zone and x and y then
        obj.coords = {
            zone = zone:trim(),
            x = tonumber(x),
            y = tonumber(y)
        }
    end

    -- Flags
    if line:find("|notinsticky") then obj.notinsticky = true end
    if line:find("|future") then obj.future = true end

    -- Fallback to note type if no quest info or quantity
    if not obj.qid and not obj.quantity then
        obj.type = "note"
        obj.from = "kill"
        obj.isComplete = nil
        obj.blankBox = false
    end

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleDingLine
-- ============================================================
function IronPath.Parser:HandleDingLine(line, step)
    local level, xp = line:match("^ding%s+(%d+),?(%d*)")
    if not level then return end

    local obj = {
        type = "ding",
        level = tonumber(level),
        xp = (xp ~= "" and tonumber(xp)) or nil,
        isComplete = false,
        blankBox = false,
    }

    -- Optional coordinates
    local zone, x, y = line:match("|goto%s+([%w%s%'%-]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
    if zone and x and y then
        obj.coords = {
            zone = zone:trim(),
            x = math.floor(tonumber(x)),
            y = math.floor(tonumber(y)),
        }
    end

    -- Optional condition
    local condition = line:match("|only if%s+([^|]+)") or line:match("|only%s+([^|]+)")
    if condition then
        obj.condition = condition:match("^%s*(.-)%s*$")
    end

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleUseLine
-- ============================================================
function IronPath.Parser:HandleUseLine(line, step)
    local fullItem, id = line:match("^use%s+(.+)##(%d+)")
    if not fullItem or not id then return end

    local obj = {
        type = "use",
        item = fullItem:gsub("^the%s+", ""):trim(), -- Store clean item name
        itemID = tonumber(id),
        isComplete = nil,
        blankBox = true,
    }

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleCollectLine
-- ============================================================
function IronPath.Parser:HandleCollectLine(line, step)
    local baseLine = line:match("^(.-)|") or line

    -- Get quantity and item
    local quantity, item = baseLine:match("^collect%s+(%d+)%s+(.+)")
    if not item then
        item = baseLine:match("^collect%s+(.+)")
        quantity = "1"
    end
    if not item then return end

    -- Extract itemID and clean item name
    local id = item:match("##(%d+)")
    if id then item = item:gsub("##%d+", ""):trim() end

    local obj = {
        type = "collect",
        item = item:trim(),
        quantity = tonumber(quantity),
        itemID = id and tonumber(id) or nil,
        isComplete = false,
        blankBox = false
    }

    -- Quest ID and index
    local qid, qindex = line:match("|q%s+(%d+)/?(%d*)")
    if qid then
        obj.qid = tonumber(qid)
        if qindex and qindex ~= "" then obj.qindex = tonumber(qindex) end
    end

    -- Coordinates
    local zone, x, y = line:match("|goto%s+([%w%s%'%-/]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
    if zone and x and y then
        obj.coords = { zone = zone:trim(), x = tonumber(x), y = tonumber(y) }
    end

    -- Condition
    obj.condition = line:match("|only if%s+([^\r\n|]+)") or line:match("|only%s+([^\r\n|]+)")

    -- Convert to note if |n tag is present
    if line:find("|n%s") or line:find("|n$") then
        obj.type = "note"
        obj.from = "collect"
        obj.isComplete = nil
        obj.blankBox = false
    end

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleClickLine
-- ============================================================
function IronPath.Parser:HandleClickLine(line, step)
    local raw = line:match("^clicknpc%s+(.+)") or line:match("^click%s+(.+)")
    if not raw then return end

    -- Extract object ID
    local objectID = raw:match("##object=(%d+)") or raw:match("##(%d+)")

    -- Clean object name
    local objectName = raw:gsub("##object=%d+", "")
        :gsub("##%d+", "")
        :gsub("+$", "")
        :gsub("%s+$", "")
        :trim()

    local obj = {
        type = "click",
        object = objectName,
        objectID = tonumber(objectID),
        isComplete = nil,
        blankBox = true,
    }

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleLearnSpellLine
-- ============================================================
function IronPath.Parser:HandleLearnSpellLine(line, step)
    local spell, id = line:match("^learnspell%s+(.+)##(%d+)")
    if not spell or not id then return end

    local obj = {
        type = "learnspell",
        spell = spell:trim(),
        spellID = tonumber(id),
        isComplete = false,
        blankBox = false,
    }

    -- Optional coordinates
    local zone, x, y = line:match("|goto%s+([%w%s%'%-/]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
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
-- HandleWalkLine
-- ============================================================
function IronPath.Parser:HandleWalkLine(line, step)
    -- Case 1: [Zone x, y]
    local zone, x, y = line:match("^%[(.-)%s+(%d+%.?%d*),%s*(%d+%.?%d*)%]$")
    if zone and x and y then
        table.insert(step.objectives, {
            type = "walk",
            coords = {
                zone = zone:trim(),
                x = math.floor(tonumber(x)),
                y = math.floor(tonumber(y)),
            },
            isComplete = nil,
            blankBox = true,
        })
        return
    end

    -- Case 2: [x, y] (no zone)
    x, y = line:match("^%[(%d+%.?%d*),%s*(%d+%.?%d*)%]$")
    if x and y then
        table.insert(step.objectives, {
            type = "walk",
            coords = {
                x = math.floor(tonumber(x)),
                y = math.floor(tonumber(y)),
            },
            isComplete = nil,
            blankBox = true,
        })
    end
end

-- ============================================================
-- HandleTrashLine
-- ============================================================
function IronPath.Parser:HandleTrashLine(line, step)
    local item, id = line:match("^trash%s+(.+)##(%d+)")
    if not item or not id then return end

    local obj = {
        type = "trash",
        item = item:trim(),
        itemID = tonumber(id),
        isComplete = false,
        blankBox = false,
    }

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleBankLine
-- ============================================================
function IronPath.Parser:HandleBankLine(line, step)
    local item, id = line:match("^bank%s+(.+)##(%d+)")
    if not item or not id then return end

    local obj = {
        type = "bank",
        item = item:trim(),
        itemID = tonumber(id),
        isComplete = false,
        blankBox = false,
    }

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleTipLine
-- ============================================================
function IronPath.Parser:HandleTipLine(line, step)
    -- Extract optional flags
    local condition = line:match("|only if%s+([^|]+)")
    local notinsticky = line:find("|notinsticky")

    -- Clean the line by removing known tags and extracting tip text
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
        text = cleaned,
        isComplete = nil,
        blankBox = true,
        condition = condition and condition:match("^%s*(.-)%s*$") or nil,
        notinsticky = notinsticky and true or nil,
    }

    table.insert(step.objectives, obj)
end

-- ============================================================
-- HandleStepConditionLine
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
-- HandleLabelLine
-- ============================================================
function IronPath.Parser:HandleLabelLine(line, step)
    step._label = line:gsub("^label%s+", ""):gsub('"', ''):match("^%s*(.-)%s*$")
end

-- ============================================================
-- HandleStickyStartLine
-- ============================================================
function IronPath.Parser:HandleStickyStartLine(line, step)
    step.stickystart = step.stickystart or {}
    local label = line:match('^stickystart%s+"(.+)"') or
        line:match('^stickystart%s+(%S+)')
    if label then table.insert(step.stickystart, label) end
end

-- ============================================================
-- HandleStickyStopLine
-- ============================================================
function IronPath.Parser:HandleStickyStopLine(line, step)
    step.stickystop = step.stickystop or {}
    local label = line:match('^stickystop%s+"(.+)"') or
        line:match('^stickystop%s+(%S+)')
    if label then table.insert(step.stickystop, label) end
end

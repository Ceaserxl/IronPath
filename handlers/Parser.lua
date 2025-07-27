-- ============================================================
-- parser.lua – Parser for guide files.
-- ============================================================
IronPath.Parser = {}

------------------------------------------------------------
-- Entry Point
------------------------------------------------------------
function IronPath.Parser:ParseSteps(stepText)
    local steps, block = {}, {}
    for line in stepText:gmatch("[^\r\n]+") do
        line = line:match("^%s*(.-)%s*$")
        if line:lower() == "step" then
            if next(block) then
                table.insert(steps, self:ParseSingleStep(block))
                block = {}
            end
        else
            table.insert(block, line)
        end
    end
    if next(block) then table.insert(steps, self:ParseSingleStep(block)) end
    return steps
end

------------------------------------------------------------
-- Step Parsing
------------------------------------------------------------
function IronPath.Parser:ParseSingleStep(lines)
    local step = {title = nil, objectives = {}, extras = {}, condition = nil}

    for _, line in ipairs(lines) do
        local trimmed = line:match("^%s*(.-)%s*$")

        -- Step-level flags
        self:HandleTipLine(trimmed, step) -- |tip info text
        -- self:HandleNotInStickyLine(trimmed, step) -- Marks step/objective as excluded from sticky logic

        -- UI titles / confirmations
        self:HandleTitleLine(trimmed, step) -- "_Title_" styled text becomes step title
        self:HandleConfirmLine(trimmed, step) -- Adds a confirm dialog objective

        -- Quest-related objectives
        self:HandleObjectiveLine(trimmed, step)
        self:HandleAcceptLine(trimmed, step) -- accept Quest Name##123
        self:HandleTurninLine(trimmed, step) -- turnin Quest Name##123
        self:HandleCompleteLine(trimmed, step) -- |complete dynamic script-based condition
        self:HandleCollectLine(trimmed, step) -- collect Item Name##123
        self:HandleKillLine(trimmed, step) -- kill 3 Enemy##123 or kill Enemy##123
        self:HandleUseLine(trimmed, step) -- use Item Name##123
        self:HandleTalkLine(trimmed, step) -- talk NPC Name##123
        self:HandleGossipLine(trimmed, step) -- |gossip 123 – click gossip option
        self:HandleVendorLine(trimmed, step) -- |vendor NPC##123 – vendor interaction
        self:HandleLearnSpellLine(trimmed, step) -- learnspell Spell Name##123
        self:HandleClickLine(trimmed, step) -- click Object Name##123
        self:HandleBuyLine(trimmed, step) -- buy Item Name##123 [|n=2]
        self:HandleFpathLine(trimmed, step) -- fpath Location |goto
        self:HandleTrainerLine(trimmed, step) -- trainer NPC##123 |goto

        -- Player level and skill requirements
        self:HandleDingLine(trimmed, step) -- ding 10[,100xp]
        self:HandleSkillMaxLine(trimmed, step) -- |skillmax Skill,75

        -- Movement
        self:HandleWalkLine(trimmed, step) -- [Zone x, y] or [x, y]

        -- Metadata / extras / sticky logic

        self:HandleLabelLine(trimmed, step) -- label mystep
        self:HandleStickyStartLine(trimmed, step) -- stickystart mystep
        self:HandleStickyStopLine(trimmed, step) -- stickystop mystep
        self:HandleHomeLine(trimmed, step) -- home CityName |goto
        self:HandleTipCoordsLine(trimmed, step) -- Label [Zone x, y] tip

        self:HandleTrashLine(trimmed, step) -- trash Item##123
        self:HandleGenericNoteLine(trimmed, step) -- Any unmatched line becomes a note objective
    end

    -- 🔽 Detect and assign step-level condition from a standalone "|only if" or "|only" line
    for i = #lines, 1, -1 do
        local line = lines[i]
        local isOnly = line:match("^|only if%s+(.+)$") or
                           line:match("^|only%s+(.+)$")
        if isOnly then
            step.condition = isOnly:match("^%s*(.-)%s*$")
            break -- only assign the last valid one
        end
    end

    return step

end

------------------------------------------------------------
-- Handlers
------------------------------------------------------------
function IronPath.Parser:HandleGenericNoteLine(line, step)
    local knownPrefixes = {
        "accept", "turnin", "collect", "destroy", "buy", "learn", "train",
        "use", "click", "talk", "home", "walk", "complete", "ding", "skillmax",
        "fpath", "vendor", "learnspell", "gossip", "label", "stickystart",
        "stickystop"
    }

    local trimmed = line:match("^%s*(.-)%s*$")
    if trimmed == "" or trimmed:match("^_") then return end

    local notinsticky = false
    local popuptext = nil
    local condition = nil

    -- Extract |popuptext
    if trimmed:find("|popuptext%s+") then
        popuptext = trimmed:match("|popuptext%s+([^\r\n|]+)")
        trimmed = trimmed:gsub("|popuptext%s+[^\r\n|]+", ""):gsub("%s+$", "")
    end

    -- Extract |notinsticky
    if trimmed:find("|notinsticky") then
        notinsticky = true
        trimmed = trimmed:gsub("|notinsticky", ""):gsub("%s+$", "")
    end

    -- Extract |only or |only if condition
    if trimmed:find("|only if%s+") or trimmed:find("|only%s+") then
        condition = trimmed:match("|only if%s+([^|]+)") or
                        trimmed:match("|only%s+([^|]+)")
        trimmed = trimmed:gsub("|only if%s+[^|]+", "")
        trimmed = trimmed:gsub("|only%s+[^|]+", "")
        trimmed = trimmed:gsub("%s+$", "")
    end

    -- Reject if unknown |tag, ##ID, or coordinates remain
    if trimmed:find("|") or trimmed:find("##") or
        trimmed:find("%[?%d+%.%d+,%s*%d+%.%d+%]?") then return end

    -- Skip known action prefixes (case-sensitive)
    for _, prefix in ipairs(knownPrefixes) do
        if trimmed:match("^" .. prefix .. "%s") then return end
    end

    -- Skip empty unless popuptext is present
    if trimmed == "" and not popuptext then return end

    local objType = popuptext and "popuptext" or "note"

    local obj = {
        type = objType,
        label = trimmed ~= "" and trimmed or "(popup)",
        isComplete = nil,
        blankBox = true
    }

    if popuptext then obj.popuptext = popuptext end
    if notinsticky then obj.notinsticky = true end
    if condition then obj.condition = condition:match("^%s*(.-)%s*$") end

    table.insert(step.objectives, obj)
end

function IronPath.Parser:HandleObjectiveLine(line, step)
    if not line:find("|q") then return end

    local skipActions = {
        "collect", "kill", "buy", "turnin", "accept", "use", "destroy", "learn",
        "train", "click", "talk", "complete", "home", "ding"
    }

    for _, action in ipairs(skipActions) do
        if line:match("^" .. action) then return end
    end

    if line:find("|vendor") or line:find("|skillmax") or line:find("|complete") or
        line:find("|confirm") or not line:match("|q%s+%d+") then return end

    local rawLabel = line:match("^(.-)|q") or "Explore area"
    rawLabel = rawLabel:match("^%s*(.-)%s*$")

    -- Replace #5# with 5 and extract it as quantity
    local quantity = tonumber(rawLabel:match("#(%d+)#"))
    local label = rawLabel:gsub("#(%d+)#", "%1"):match("^%s*(.-)%s*$")

    local qid, qindex = line:match("|q%s+(%d+)/?(%d*)")
    qid = qid and math.floor(tonumber(qid)) or nil
    qindex = qindex and qindex ~= "" and math.floor(tonumber(qindex)) or nil

    local zone, x, y = line:match("|goto%s+([^%d]+)%s+(%d+%.?%d*),(%d+%.?%d*)")

    local obj = {
        type = "walkObj",
        label = label,
        isComplete = false,
        blankBox = false,
        qid = qid,
        qindex = qindex
    }

    if quantity then obj.quantity = quantity end

    if zone and x and y then
        obj.coords = {
            zone = zone:match("^%s*(.-)%s*$"),
            x = tonumber(x),
            y = tonumber(y)
        }
    end

    table.insert(step.objectives, obj)
end

function IronPath.Parser:HandleStickyStopLine(line, step)
    if not step.stickystop then step.stickystop = {} end
    local label = line:match('^stickystop%s+"(.+)"') or
                      line:match("^stickystop%s+(%S+)")
    if label then table.insert(step.stickystop, label) end
end
function IronPath.Parser:HandleStickyStartLine(line, step)
    if not step.stickystart then step.stickystart = {} end
    local label = line:match('^stickystart%s+"(.+)"') or
                      line:match("^stickystart%s+(%S+)")
    if label then table.insert(step.stickystart, label) end
end
function IronPath.Parser:HandleTrainerLine(line, step)
    if line:match("^trainer%s+.+##%d+") then
        local npc, id = line:match("^trainer%s+(.+)##(%d+)")
        if npc and id then
            local obj = {
                type = "trainer",
                npc = npc,
                npcID = tonumber(id),
                label = npc,
                isComplete = false,
                blankBox = false
            }

            -- Optional quest ID
            local qid = line:match("|q%s+(%d+)")
            if qid then obj.qid = tonumber(qid) end

            -- Optional condition
            local condition = line:match("|only if%s+([^\r\n|]+)") or
                                  line:match("|only%s+([^\r\n|]+)")
            if condition then
                obj.condition = condition:match("^%s*(.-)%s*$")
            end

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
end

function IronPath.Parser:HandleFpathLine(line, step)
    if line:match("^fpath%s+") then
        local npc = line:match("^fpath%s+([^|]+)") or "Flight Master"

        local zone, x, y = line:match("|goto%s+([%a%s]+)%s+([%d%.]+),([%d%.]+)")
        if zone and x and y then
            local obj = {
                type = "fpath",
                label = npc,
                coords = {
                    x = math.floor(tonumber(x)),
                    y = math.floor(tonumber(y)),
                    zone = zone
                },
                isComplete = false,
                blankBox = false
            }

            table.insert(step.objectives, obj)
        end
    end
end

function IronPath.Parser:HandleLabelLine(line, step)
    local label = line:match('^label%s+"(.+)"') or line:match("^label%s+(%S+)")
    if label then step._label = label end
end

function IronPath.Parser:HandleHomeLine(line, step)
    if not line:match("^home%s+") then return end

    local obj = {type = "home", isComplete = false, blankBox = false}

    -- Hearth location
    local hearthLoc = line:match("^home%s+([^|]+)")
    obj.hearthLocation = hearthLoc and hearthLoc:match("^%s*(.-)%s*$") or
                             "Unknown"
    obj.label = obj.hearthLocation

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

function IronPath.Parser:HandleBuyLine(line, step)
    if not line:match("^buy%s+.+##%d+") then return end

    local label, itemID = line:match("^buy%s+(.+)##(%d+)")
    if label and itemID then
        local qty = 1

        -- Detect |n or |n=#
        if line:find("|n=%d+") then
            qty = tonumber(line:match("|n=(%d+)")) or 1
        elseif line:find("|n") then
            qty = 1
        end

        local obj = {
            type = "buy",
            label = qty .. " " .. label,
            item = label,
            itemID = tonumber(itemID),
            quantity = qty,
            isComplete = false,
            blankBox = false
        }

        table.insert(step.objectives, obj)
    end
end

function IronPath.Parser:HandleKillLine(line, step)
    if not line:match("^kill%s+") then return end

    local obj = {type = "kill", isComplete = false, blankBox = true}

    -- Quantity (optional)
    local qty, rest = line:match("^kill%s+(%d+)%s+(.+)")
    if qty and rest then
        obj.quantity = tonumber(qty)
        obj.blankBox = false
        obj.target = rest:match("(.+)##") or rest:match("(.+)")
    else
        obj.target = line:match("^kill%s+(.+)##") or line:match("^kill%s+(.+)")
    end

    obj.label = obj.target

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

    -- Future flag
    if line:find("|future") then obj.future = true end

    table.insert(step.objectives, obj)
end

function IronPath.Parser:HandleNotInStickyLine(line, step)
    if line:find("|notinsticky") then step.notinsticky = true end
end

function IronPath.Parser:HandleDingLine(line, step)
    local lower = line:lower()
    if lower:match("^ding%s+%d+") then
        local level, xp = line:match("^ding%s+(%d+),?(%d*)")
        if level then
            local label = "Level " .. level
            if xp and xp ~= "" then
                label = label .. " and " .. xp .. "xp"
            end

            local obj = {
                type = "ding",
                level = tonumber(level),
                xp = tonumber(xp) or nil,
                label = label,
                isComplete = false,
                blankBox = false
            }

            local zone, x, y = line:match(
                                   "|goto%s+([%w%s%'%-]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
            if zone and x and y then
                obj.coords = {
                    zone = zone:match("^%s*(.-)%s*$"),
                    x = math.floor(tonumber(x)),
                    y = math.floor(tonumber(y))
                }
            end

            table.insert(step.objectives, obj)
        end
    end
end

function IronPath.Parser:HandleTipCoordsLine(line, step)
    -- Case: zone inside the brackets
    local text, zone, x, y = line:match(
                                 "^(%S.-)%s*%[(.-)%s+(%d+%.?%d*),%s*(%d+%.?%d*)%]$")
    if text and zone and x and y then
        x = math.floor(tonumber(x))
        y = math.floor(tonumber(y))
        table.insert(step.objectives, {
            type = "walk",
            label = string.format("%s [%s,%s]", text, x, y),
            coords = {zone = zone:match("^%s*(.-)%s*$"), x = x, y = y},
            isComplete = nil,
            blankBox = true
        })
        return
    end

    -- Case: no zone, just coords
    text, x, y = line:match("^(%S.-)%s*%[(%d+%.?%d*),%s*(%d+%.?%d*)%]$")
    if text and x and y then
        x = math.floor(tonumber(x))
        y = math.floor(tonumber(y))
        table.insert(step.objectives, {
            type = "walk",
            label = string.format("%s [%s,%s]", text, x, y),
            coords = {x = x, y = y},
            isComplete = nil,
            blankBox = true
        })
    end
end

function IronPath.Parser:HandleConfirmLine(line, step)
    if line:find("|confirm") then
        local label = line:match("^(.-)|confirm"):match("^%s*(.-)%s*$")
        local obj = {
            type = "confirm",
            label = label or "",
            isComplete = false,
            blankBox = true
        }

        -- Optional quest metadata
        local qid, qindex = line:match("|q%s+(%d+)/?(%d*)")
        if qid then
            obj.qid = tonumber(qid)
            if qindex and qindex ~= "" then
                obj.qindex = tonumber(qindex)
            end
        end

        if line:find("|future") then obj.future = true end

        table.insert(step.objectives, obj)
    end
end

function IronPath.Parser:HandleGossipLine(line, step)
    if line:find("|gossip%s+%d+") then
        local label = line:match("^(.-)|gossip")
        if label then
            label = label:match("^%s*(.-)%s*$")
            label = label:gsub('_%"', '"')
            label = label:gsub('%"_', '"')
            label = label:gsub('"_', '"')
            label = label:gsub('_%"$', '"')
            label = label:gsub('%"$', '"')
        end

        local gossipID = line:match("|gossip%s+(%d+)")
        if gossipID then
            local obj = {
                type = "gossip",
                gossipID = tonumber(gossipID),
                label = label or "",
                isComplete = nil,
                blankBox = true
            }

            -- Coordinates
            local zone, x, y = line:match(
                                   "|goto%s+(.+)%s+(%d+%.?%d*),(%d+%.?%d*)")
            if zone and x and y then
                obj.coords = {
                    zone = zone:match("^%s*(.-)%s*$"),
                    x = math.floor(tonumber(x)),
                    y = math.floor(tonumber(y))
                }
            end

            table.insert(step.objectives, obj)
        end
    end
end

function IronPath.Parser:HandleSkillMaxLine(line, step)
    if line:find("|skillmax%s+.+,%d+") then
        local label = line:match("^(.-)|skillmax")
        label = label and label:match("^%s*(.-)%s*$") or ""

        local skill, max = line:match("|skillmax%s+([^,|]+),(%d+)")
        if skill and max then
            local obj = {
                type = "skillmax",
                skill = skill:match("^%s*(.-)%s*$"),
                max = tonumber(max),
                label = label,
                isComplete = false,
                blankBox = false
            }

            local zone, x, y = line:match(
                                   "|goto%s+([%w%s%'%-]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
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
end

function IronPath.Parser:HandleCompleteLine(line, step)
    if line:match("|complete%s+.+") then
        if line:match("^%'") then return end -- Ignore lines starting with '

        local label = line:match("^(.-)|complete"):match("^%s*(.-)%s*$")
        local condition = line:match("|complete%s+([^|]+)")

        if condition then
            local func, err = loadstring("return " .. condition)
            local isComplete = false

            if func then
                pcall(function()
                    local result = func()
                    isComplete = result == true or result == 1
                end)
            else
                IronPath:DebugPrint("Invalid |complete condition: " ..
                                        tostring(err), "parser")
            end

            local obj = {
                type = "complete",
                label = label or "",
                completeIf = condition,
                isComplete = isComplete,
                blankBox = false
            }

            -- Optional quest metadata
            local qid, qindex = line:match("|q%s+(%d+)/?(%d*)")
            if qid then
                obj.qid = tonumber(qid)
                if qindex and qindex ~= "" then
                    obj.qindex = tonumber(qindex)
                end
            end

            -- Optional display condition
            local onlyIf = line:match("|only if%s+([^\r\n|]+)")
            if onlyIf then obj.condition = onlyIf end

            if line:find("|future") then obj.future = true end

            -- Coordinates
            local zone, x, y = line:match(
                                   "|goto%s+([%w%s%'%-/]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
            if zone and x and y then
                obj.coords = {
                    zone = zone:match("^%s*(.-)%s*$"),
                    x = math.floor(tonumber(x)),
                    y = math.floor(tonumber(y))
                }
            end

            table.insert(step.objectives, obj)
        end
    end
end

function IronPath.Parser:HandleTurninLine(line, step)
    if line:match("^turnin%s+.+##%d+") then
        local quest, qid = line:match("^turnin%s+(.+)##(%d+)")
        if quest and qid then
            local obj = {
                type = "turnin",
                quest = quest,
                qid = tonumber(qid),
                label = quest,
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
end

function IronPath.Parser:HandleUseLine(line, step)
    if line:match("^use%s+.+##%d+") then
        local item, id = line:match("^use%s+(.+)##(%d+)")
        if item and id then
            table.insert(step.objectives, {
                type = "use",
                item = item,
                itemID = tonumber(id),
                label = item,
                isComplete = nil,
                blankBox = true
            })
        end
    end
end

function IronPath.Parser:HandleCollectLine(line, step)
    if not line:match("^collect%s+") then return end

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
        item = (num == 1 and item) or (quantity .. " " .. item), -- logic value used for completion
        label = item, -- clean label (never shows 1)
        itemID = id and tonumber(id) or nil,
        isComplete = false,
        blankBox = false
    }

    if num and num > 1 then obj.label = quantity .. " " .. item end

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
        obj.coords = {zone = zone:trim(), x = tonumber(x), y = tonumber(y)}
    end

    table.insert(step.objectives, obj)
end

function IronPath.Parser:HandleClickLine(line, step)
    if line:match("^click%s+.+") then
        local label = line:match("^click%s+(.+)")

        if label then
            -- Strip ##ID and trailing whitespace or +
            label = label:gsub("##%d+", ""):gsub("++$", ""):gsub("%s+$", "")

            table.insert(step.objectives, {
                type = "click",
                label = "Click |cffffd933" .. (label or "unknown") .. "|r",
                isComplete = nil,
                blankBox = true
            })
        end
    end
end

function IronPath.Parser:HandleLearnSpellLine(line, step)
    if line:match("^learnspell%s+.+##%d+") then
        local spell, id = line:match("^learnspell%s+(.+)##(%d+)")
        if spell and id then
            local obj = {
                type = "learnspell",
                spell = spell,
                spellID = tonumber(id),
                label = spell,
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
end

function IronPath.Parser:HandleAcceptLine(line, step)
    local lower = line:lower()
    if lower:match("^accept%s+.+##%d+") then
        local quest, qid = line:match("^accept%s+(.+)##(%d+)")
        if quest and qid then
            local obj = {
                type = "accept",
                quest = quest,
                qid = tonumber(qid),
                label = quest,
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
end

function IronPath.Parser:HandleVendorLine(line, step)
    if line:find("|vendor") and line:find("##%d+") then
        local id = line:match("##(%d+)")
        local npc = line:match("|vendor%s+(.+)##%d+")
        local label = line:match("^(.-)|vendor")

        if id and npc then
            local obj = {
                type = "vendor",
                npc = npc:match("^%s*(.-)%s*$"),
                npcID = tonumber(id),
                label = label and label:match("^%s*(.-)%s*$") or
                    ("Vendor: " .. npc),
                isComplete = false,
                blankBox = false
            }

            -- Quest metadata
            local qid, qindex = line:match("|q%s+(%d+)/?(%d*)")
            if qid then
                obj.qid = tonumber(qid)
                if qindex and qindex ~= "" then
                    obj.qindex = tonumber(qindex)
                end
            end

            if line:find("|future") then obj.future = true end

            -- Coordinates
            local zone, x, y = line:match(
                                   "|goto%s+([%w%s%'%-/]+)%s+(%d+%.?%d*),(%d+%.?%d*)")
            if zone and x and y then
                -- Strip any trailing "/0"
                zone = zone:gsub("/0$", ""):match("^%s*(.-)%s*$")

                obj.coords = {zone = zone, x = tonumber(x), y = tonumber(y)}
            end

            table.insert(step.objectives, obj)
        end
    end
end

function IronPath.Parser:HandleWalkLine(line, step)
    -- Case 1: [Zone x, y]
    local zone, x, y = line:match("^%[(.-)%s+(%d+%.?%d*),%s*(%d+%.?%d*)%]$")
    if zone and x and y then
        x = math.floor(tonumber(x))
        y = math.floor(tonumber(y))
        table.insert(step.objectives, {
            type = "walk",
            label = string.format("%s [%s, %s]", zone, x, y),
            coords = {zone = zone:match("^%s*(.-)%s*$"), x = x, y = y},
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
        table.insert(step.objectives, {
            type = "walk",
            label = string.format("[%s, %s]", x, y),
            coords = {x = x, y = y},
            isComplete = nil,
            blankBox = true
        })
    end
end

function IronPath.Parser:HandleConditionLine(line, step)
    -- Matches: |havebuff Ghost##8326
    for token in line:gmatch("|havebuff%s+[^|]+") do
        local name, id = token:match("|havebuff%s+(.+)##(%d+)")
        if id then
            table.insert(step.extras or step.objectives, {
                type = "condition",
                condition = "havebuff(" .. id .. ")",
                label = "Requires buff: " .. name,
                blankBox = true
            })
        end
    end
end

function IronPath.Parser:HandleTrashLine(line, step)
    if line:match("^trash%s+.+##%d+") then
        local item, id = line:match("^trash%s+(.+)##(%d+)")
        if item and id then
            table.insert(step.objectives, {
                type = "trash",
                item = item,
                itemID = tonumber(id),
                label = item,
                isComplete = false,
                blankBox = false
            })
        end
    end
end

function IronPath.Parser:HandleTalkLine(line, step)
    if not line:match("^talk%s+.+##%d+") then return end

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
        label = npc,
        isComplete = nil,
        blankBox = true,
        condition = condition,
        notinsticky = notinsticky or nil
    })
end

function IronPath.Parser:HandleTipLine(line, step)
    if not line:match("^|tip%s+.+") or line:find("##%d+") then return end

    local tip = line:match("^|tip%s+(.+)")

    -- Clean and extract condition and notinsticky flags first
    local condition = line:match("|only if%s+([^|]+)")
    local notinsticky = line:find("|notinsticky")

    -- Strip both flags from the line
    local cleanLine = line:gsub("|only if%s+[^|]+", ""):gsub("|notinsticky", "")
                          :gsub("%s+$", "")
    local tip = cleanLine:match("^|tip%s+(.+)")

    -- Only proceed if we have a visible tip
    if tip and tip:match("%S") then
        table.insert(step.objectives, {
            type = "tip",
            label = tip,
            isComplete = nil,
            blankBox = true,
            condition = condition and condition:match("^%s*(.-)%s*$") or nil,
            notinsticky = notinsticky and true or nil
        })
    end
end

function IronPath.Parser:HandleTitleLine(line, step)
    if line:match("^_.*_$") then
        local title = line:match("^_*(.-)_*$")
        step.title = title
        table.insert(step.objectives, {
            type = "title",
            label = title,
            isComplete = nil,
            blankBox = true
        })
    end
end

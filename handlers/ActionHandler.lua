local IronPath = _G.IronPath
local GuideViewer = _G.IronPathViewer
local HBD = LibStub("HereBeDragons-2.0")

GuideViewer.ActionHandlers = {}

-- ============================================================
-- Action: obj
-- ============================================================
GuideViewer.ActionHandlers.obj = function(self, step, silent)
    local allComplete = false
    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "obj" and not obj.isComplete then
            local isDone = false
            -- Extract and replace #12# with 12
            if not obj.quantity and obj.label then
                local qty = tonumber(obj.label:match("#(%d+)#"))
                if qty then
                    obj.quantity = qty
                    obj.label = obj.label:gsub("#%d+#", tostring(qty)):gsub("^%s+", "")
                end
            end
            if obj.qid then
                -- First check if the whole quest is flagged completed
                if C_QuestLog.IsQuestFlaggedCompleted(obj.qid) then
                    isDone = true
                else
                    local objectives = C_QuestLog.GetQuestObjectives(obj.qid)
                    if objectives and obj.qindex and objectives[obj.qindex] then
                        local o = objectives[obj.qindex]
                        local have = o.numFulfilled or 0
                        local need = o.numRequired or 1
                        -- Strip old progress if present
                        obj.label = obj.label:gsub("%s*%(%d+/%d+%)", "")
                        -- Append fresh progress
                        obj.label = string.format("%s (%d/%d)", obj.label, have, obj.quantity or need)
                        isDone = have >= (obj.quantity or need)
                    end
                end
            end
            if isDone then
                obj.isComplete = true
                IronPath:DebugPrint("obj complete: qid=" .. tostring(obj.qid), "obj")
            else
                allComplete = false
            end
        end
    end
    return allComplete, "obj", allComplete
end

-- ============================================================
-- Action: talk
-- ============================================================
GuideViewer.ActionHandlers.talk = function(self, step, silent)
    local allComplete = true

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "talk" then
            -- Default label
            if obj.npc then
                obj.label = "Talk to |cff00ff00" .. obj.npc .. "|r"
            else
                obj.label = "Talk to the NPC"
            end

            -- Try to auto-complete if player is targeting the correct NPC
            if UnitExists("target") then
                local guid = UnitGUID("target")
                if guid then
                    local type, _, _, _, _, id = strsplit("-", guid)
                    id = tonumber(id)
                    if id and obj.npcID == id then
                        obj.isComplete = true
                        IronPath:DebugPrint(
                            "Talk objective[" .. index .. "] complete: Targeting correct NPC (" .. id .. ")", "talk")
                    end
                end
            end

            if not obj.isComplete then
                allComplete = false
            end
        end
    end

    return allComplete, "talk", allComplete
end

-- ============================================================
-- Action: accept
-- ============================================================
GuideViewer.ActionHandlers.accept = function(self, step, silent)
    local allComplete = true

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "accept" and obj.qid then
            -- Build label
            if obj.quest then
                obj.label = "Accept |cffffcc00" .. obj.quest .. "|r"
            else
                obj.label = "Accept the quest"
            end

            -- Check quest status
            local qid = obj.qid
            local inLog = GetQuestLogIndexByID(qid)

            if C_QuestLog.IsQuestFlaggedCompleted(qid) or (inLog and inLog > 0) then
                obj.isComplete = true
                IronPath:DebugPrint("Accept objective[" .. index .. "] complete. QID=" .. qid, "accept")
            else
                allComplete = false
            end
        end
    end

    return allComplete, "accept", allComplete
end


-- ============================================================
-- Action: turnin
-- ============================================================
GuideViewer.ActionHandlers.turnin = function(self, step, silent)
    local allComplete, changed = true, false

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "turnin" and not obj.isComplete and obj.qid then
            -- Build label
            if obj.quest then
                obj.label = "Turn in |cffffcc00" .. obj.quest .. "|r"
            else
                obj.label = "Turn in the quest"
            end

            -- Check completion
            if C_QuestLog.IsQuestFlaggedCompleted(obj.qid) then
                obj.isComplete = true
                changed = true
                IronPath:DebugPrint("Turnin objective[" .. index .. "] complete. QID=" .. obj.qid, "turnin")
            else
                allComplete = false
            end
        end
    end

    return allComplete, "turnin", allComplete
end

-- ============================================================
-- Action: trainer
-- ============================================================
GuideViewer.ActionHandlers.trainer = function(self, step, silent)
    local allComplete = true

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "trainer" then
            -- Build dynamic label
            if obj.npc then
                obj.label = "Train your spells from |cff66ff66" .. obj.npc .. "|r"
            else
                obj.label = "Train your spells."
            end

            -- Auto-complete if player is targeting the correct trainer
            if UnitExists("target") then
                local guid = UnitGUID("target")
                if guid then
                    local _, _, _, _, _, id = strsplit("-", guid)
                    if tonumber(id) == obj.npcID then
                        obj.isComplete = true
                        IronPath:DebugPrint("Trainer objective[" .. index .. "] complete: Targeting " .. obj.npc,
                            "trainer")
                    end
                end
            end

            if not obj.isComplete then
                allComplete = false
            end
        end
    end

    return allComplete, "trainer", allComplete
end

-- ============================================================
-- Action: fpath
-- ============================================================
GuideViewer.ActionHandlers.fpath = function(self, step)
    if not IronPath.db or not IronPath.db.char then
        IronPath:DebugPrint("No DB or character data found", "fpath")
        return false, "fpath", false
    end

    local fpaths = IronPath.db.char.fpaths or {}
    IronPath.db.char.fpaths = fpaths

    local allComplete = true

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "fpath" then
            -- Build label
            if obj.name then
                obj.label = "Flight Path: |cff80ccff" .. obj.name .. "|r"
            else
                obj.label = "Get the flight path"
            end

            -- Match against known flight paths
            local label = (obj.name or ""):lower()
            local matched = false

            for knownName in pairs(fpaths) do
                local known = knownName:lower()
                if known:find(label, 1, true) or label:find(known, 1, true) then
                    obj.isComplete = true
                    matched = true
                    IronPath:DebugPrint("Matched known fpath: " .. knownName .. " ~= " .. label, "fpath")
                    break
                end
            end

            if not matched then
                allComplete = false
            end
        end
    end

    -- Learn newly opened flight paths if TaxiFrame is open
    if TaxiFrame and TaxiFrame:IsShown() then
        for i = 1, NumTaxiNodes() do
            local nodeType = TaxiNodeGetType(i)
            if nodeType == "REACHABLE" or nodeType == "CURRENT" then
                local name = TaxiNodeName(i)
                if name and name ~= "" then
                    local base = name:match("^(.-),") or name
                    base = base:match("^%s*(.-)%s*$"):lower()
                    if not fpaths[base] then
                        fpaths[base] = true
                        IronPath:DebugPrint("Discovered fpath: " .. base, "fpath")
                    end
                end
            end
        end
    end

    return allComplete, "fpath", allComplete
end

-- ============================================================
-- Action: home
-- ============================================================
GuideViewer.ActionHandlers.home = function(self, step, silent)
    if step._wasComplete then return true, "home", true end

    local hearthZone = GetBindLocation() or ""
    local allComplete = true

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "home" and not obj.isComplete then
            -- Build label
            if obj.hearthLocation then
                obj.label = "Set Hearth: |cffe066ff" .. obj.hearthLocation .. "|r"
            else
                obj.label = "Set your Hearthstone"
            end

            -- Check if current bind matches
            if hearthZone:lower():find(obj.hearthLocation:lower()) then
                obj.isComplete = true
                step._wasComplete = true
                IronPath:DebugPrint("Hearth objective[" .. index .. "] complete: " .. hearthZone, "home")
            else
                allComplete = false
                IronPath:DebugPrint("Hearth not set yet. Current: " .. hearthZone .. ", Wanted: " .. obj.hearthLocation,
                    "home")
            end
        end
    end

    return allComplete, "home", allComplete
end

-- ============================================================
-- Action: buy
-- ============================================================
GuideViewer.ActionHandlers.buy = function(self, step, silent)
    local allComplete = true

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "buy" and not obj.isComplete then
            local itemID = tonumber(obj.itemID)
            local needed = obj.quantity or 1
            local have = 0

            -- Try by itemID first
            if itemID then
                have = GetItemCount(itemID, false)
            end

            -- Fallback to item name if still 0
            if have < needed and obj.item then
                have = GetItemCount(obj.item, false)
                IronPath:DebugPrint("Fallback name check: " .. obj.item .. ", count=" .. have .. "/" .. needed, "buy")
            end

            -- Build label
            local qtyText = (needed > 1) and (needed .. " ") or ""
            local itemName = obj.item or ("itemID=" .. tostring(itemID))
            obj.label = "Buy |cff66ccff" .. qtyText .. itemName .. "|r (" .. have .. "/" .. needed .. ")"

            -- Check completion
            if have >= needed then
                obj.isComplete = true
                IronPath:DebugPrint(
                    "Buy objective[" .. index .. "] complete: " .. itemName .. " (" .. have .. "/" .. needed .. ")",
                    "buy")
            else
                allComplete = false
                IronPath:DebugPrint(
                    "Buy objective[" .. index .. "] not complete: " .. itemName .. " (" .. have .. "/" .. needed .. ")",
                    "buy")
            end
        end
    end

    return allComplete, "buy", allComplete
end

-- ============================================================
-- Action: kill
-- ============================================================
GuideViewer.ActionHandlers.kill = function(self, step, silent)
    local allComplete = true

    -- Passive quest completion check
    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "kill" and obj.qid and C_QuestLog.IsQuestFlaggedCompleted(obj.qid) and not obj.future then
            obj.isComplete = true
            IronPath:DebugPrint("Quest " .. obj.qid .. " already complete. Marking kill objective done.", "kill")
        end
    end

    -- Regular quest objective tracking
    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "kill" and not obj.isComplete then
            local labelText = ""

            -- If quest index exists, track objective progress
            if obj.qid and obj.qindex then
                local q = C_QuestLog.GetQuestObjectives(obj.qid)
                local o = q and q[obj.qindex]
                if o then
                    local have, need = o.numFulfilled or 0, o.numRequired or 1
                    labelText = "Kill |cffff4444" .. (obj.target or "Target") .. "|r (" .. have .. "/" .. need .. ")"
                    obj.label = labelText
                    if have >= need then
                        obj.isComplete = true
                        IronPath:DebugPrint("Kill objective[" .. index .. "] complete (" .. have .. "/" .. need .. ")",
                            "kill")
                    else
                        allComplete = false
                    end
                else
                    allComplete = false
                    IronPath:DebugPrint("Kill objective[" .. index .. "] missing quest objective data", "kill")
                end
            else
                -- Fallback label if no quest index
                if obj.quantity and obj.target then
                    labelText = "Kill |cffff4444" .. obj.quantity .. " " .. obj.target .. "|r"
                elseif obj.target then
                    labelText = "Kill |cffff4444" .. obj.target .. "|r"
                else
                    labelText = "Kill the target"
                end
                obj.label = labelText
                allComplete = false
            end
        end
    end

    return allComplete, "kill", allComplete
end


-- ============================================================
-- Action: ding
-- ============================================================
GuideViewer.ActionHandlers.ding = function(self, step, silent)
    local level = UnitLevel("player")
    local xp = UnitXP("player")
    local maxXP = UnitXPMax("player")

    local allComplete = true

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "ding" and not obj.isComplete then
            local requiredLevel = obj.level or 0
            local requiredXP = obj.xp or 0
            local colorOpen, colorClose = "|cffffcc00", "|r"

            -- Check if complete
            if level > requiredLevel or (level == requiredLevel and xp >= requiredXP) then
                obj.isComplete = true
                IronPath:DebugPrint("Ding objective[" .. index .. "] complete: level=" .. level .. ", xp=" .. xp, "ding")
            else
                allComplete = false

                -- Build dynamic label
                local label = "Reach Level " .. requiredLevel
                if level == requiredLevel then
                    if requiredXP > 0 then
                        local percent = math.floor((xp / requiredXP) * 100)
                        label = label .. " and " .. requiredXP .. " XP (" .. percent .. "%)"
                    else
                        local percent = math.floor((xp / maxXP) * 100)
                        label = label .. " (" .. percent .. "%)"
                    end
                else
                    local percent = math.floor((xp / maxXP) * 100)
                    label = label .. " (" .. percent .. "%)"
                end

                obj.label = colorOpen .. label .. colorClose
            end
        end
    end

    return allComplete, "ding", allComplete
end

-- ============================================================
-- Action: use
-- ============================================================
GuideViewer.ActionHandlers.use = function(self, step, silent)
    local allComplete = true

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "use" and obj.item and obj.itemID then
            -- Build the label
            obj.label = "Use |cff00ccff" .. obj.item .. "|r"

            -- Optional: mark complete if player has the item
            local count = GetItemCount(obj.itemID, false)
            obj.isComplete = count > 0

            -- Secure button for item use
            obj.secure = {
                type = "item",
                item = "item:" .. obj.itemID
            }

            IronPath:DebugPrint("Use objective[" .. index .. "] prepared: " ..
                obj.item .. " (" .. obj.itemID .. ")", "use")

            if not obj.isComplete then
                allComplete = false
            end
        end
    end

    return allComplete, "use", allComplete
end

-- ============================================================
-- Action: collect
-- ============================================================
GuideViewer.ActionHandlers.collect = function(self, step, silent)
    local allComplete = true

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "collect" then
            -- Skip if quest already complete
            if obj.qid and C_QuestLog.IsQuestFlaggedCompleted(obj.qid) and not obj.future then
                obj.isComplete = true
                IronPath:DebugPrint(
                    "Collect objective[" .. index .. "] skipped: Quest " .. obj.qid .. " already completed.", "collect")
            else
                obj.quantity = obj.quantity or 1
                obj.item = obj.item or obj.label or "Item"

                local count = GetItemCount(obj.itemID or 0, true) or 0
                obj.isComplete = count >= obj.quantity

                if obj.quantity == 1 then
                    obj.label = "Collect: |cffff9900" .. obj.item .. "|r"
                else
                    obj.label = "Collect: |cffff9900" .. obj.item .. "|r (" .. count .. "/" .. obj.quantity .. ")"
                end
                if not obj.isComplete then
                    allComplete = false
                end
            end
        end
    end

    return allComplete, "collect", allComplete
end


-- ============================================================
-- Action: click
-- ============================================================
GuideViewer.ActionHandlers.click = function(self, step, silent)
    local allComplete = true

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "click" and not obj.isComplete then
            -- Build label
            if obj.object then
                obj.label = "Click |cffffd933" .. obj.object .. "|r"
            else
                obj.label = "Click the object"
            end

            -- Optional secure target button if objectID is present
            if obj.objectID then
                obj.secure = {
                    type = "macro",
                    macrotext = "/targetexact " .. obj.object
                }
            end

            -- Optional auto-complete if targeting correct object
            if UnitExists("target") and obj.objectID then
                local guid = UnitGUID("target")
                if guid then
                    local _, _, _, _, _, id = strsplit("-", guid)
                    if tonumber(id) == obj.objectID then
                        obj.isComplete = true
                        IronPath:DebugPrint("Click objective[" .. index .. "] complete: Targeting " .. obj.object,
                            "click")
                    end
                end
            end

            if not obj.isComplete then
                allComplete = false
            end
        end
    end

    return allComplete, "click", allComplete
end

-- ============================================================
-- Action: learnspell
-- ============================================================
GuideViewer.ActionHandlers.learnspell = function(self, step, silent)
    local allComplete = true

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "learnspell" and obj.spellID then
            -- Build label
            if obj.spell then
                obj.label = "Learn |cff66ff66" .. obj.spell .. "|r"
            else
                obj.label = "Learn the required spell."
            end

            -- Check if the spell is known
            if not obj.isComplete then
                if IsSpellKnown(obj.spellID) then
                    obj.isComplete = true
                    IronPath:DebugPrint(
                        "Learnspell objective[" .. index .. "] complete: " .. obj.spell .. " (" .. obj.spellID .. ")",
                        "learn")
                else
                    allComplete = false
                end
            end
        end
    end

    return allComplete, "learnspell", allComplete
end

-- ============================================================
-- Action: walk
-- ============================================================
GuideViewer.ActionHandlers.walk = function(self, step, silent)
    local HBD = LibStub("HereBeDragons-2.0")

    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "walk" and obj.coords then
            -- Apply label color if needed
            if obj.label and not obj.label:find("|cff") then
                obj.label = "|cff80dfff" .. obj.label .. "|r"
            end

            --------------------------------------------------
            -- Helpers
            --------------------------------------------------

            local function CheckObjCondition()
                if obj.condition then
                    local success, result = pcall(function()
                        return loadstring("return " .. obj.condition)()
                    end)
                    if not success then
                        IronPath:DebugPrint("walk: obj.condition error → " .. tostring(result), "walk")
                        return false
                    end
                    IronPath:DebugPrint("walk: obj.condition = " .. tostring(result), "walk")
                    return result
                end
                return true
            end

            local function CheckCoordsCondition()
                local coords = obj.coords
                if not coords or not coords.x or not coords.y or not coords.condition then
                    return nil
                end

                local mapID = C_Map.GetBestMapForUnit("player")
                if not mapID then return false end

                local x, y = coords.x / 100, coords.y / 100
                local wx, wy = HBD:GetWorldCoordinatesFromZone(x, y, mapID)
                local pwx, pwy = HBD:GetPlayerWorldPosition()
                if not wx or not wy or not pwx or not pwy then return false end

                local dist = HBD:GetWorldDistance(nil, pwx, pwy, wx, wy)
                if not dist then return false end

                local op, val = coords.condition:match("([<>=]+)%s*(%d+)")
                val = tonumber(val)
                if op == "<" then return dist < val end
                if op == ">" then return dist > val end
                if op == "=" then return math.abs(dist - val) < 2 end

                return false
            end

            --------------------------------------------------
            -- Completion Logic
            --------------------------------------------------

            local hasObjCond = obj.condition ~= nil
            local hasCoordCond = obj.coords and obj.coords.condition ~= nil
            local passesObjCond = CheckObjCondition()

            if not passesObjCond then
                IronPath:DebugPrint("walk: obj.condition false — hiding step", "walk")
                return nil, "walk", false
            end

            if not hasObjCond and not hasCoordCond then
                IronPath:DebugPrint("walk: no conditions defined — objective is non-completable", "walk")
                return false, "walk", false
            end

            if (hasObjCond or hasCoordCond) and passesObjCond and CheckCoordsCondition() then
                IronPath:DebugPrint("walk: all conditions passed — marking complete", "walk")
                obj.isComplete = true
                step._wasComplete = true
                return true, "walk", true
            end

            --------------------------------------------------
            -- Polling Logic
            --------------------------------------------------

            if not obj._walkPoller then
                local f = CreateFrame("Frame")
                f:SetScript("OnUpdate", function(self)
                    if not CheckObjCondition() then return end

                    if not hasCoordCond then
                        IronPath:DebugPrint("walk: poller exit — coords.condition missing", "walk")
                        self:SetScript("OnUpdate", nil)
                        obj._walkPoller = nil
                        return
                    end

                    if CheckCoordsCondition() then
                        IronPath:DebugPrint("walk: objective completed via polling", "walk")
                        obj.isComplete = true
                        step._wasComplete = true
                        self:SetScript("OnUpdate", nil)
                        obj._walkPoller = nil
                        GuideViewer:ShowStep()
                    end
                end)
                obj._walkPoller = f
                IronPath:DebugPrint("walk: polling started", "walk")
            end
        end
    end

    return false, "walk", false
end

-- ============================================================
-- Action: trash
-- ============================================================
GuideViewer.ActionHandlers.trash = function(self, step, silent)
    if not step.objectives then return false end
    local allComplete = true

    for index, obj in ipairs(step.objectives) do
        if obj.type == "trash" and not obj.isComplete then
            -- Build label
            if obj.item then
                obj.label = "|cffffb000" .. obj.item .. "|r"
            else
                obj.label = "Discard item"
            end

            local itemID = obj.itemID
            if not itemID then
                IronPath:DebugPrint("Trash objective[" .. index .. "] missing itemID.", "warn")
                allComplete = false
            else
                local found = false
                for bag = 0, 4 do
                    local slots = C_Container.GetContainerNumSlots(bag)
                    for slot = 1, slots do
                        local item = C_Container.GetContainerItemInfo(bag, slot)
                        if item and item.itemID == itemID then
                            found = true
                            break
                        end
                    end
                    if found then break end
                end

                if found then
                    allComplete = false
                else
                    obj.isComplete = true
                    IronPath:DebugPrint("Trash objective[" .. index .. "] complete. ItemID: " .. itemID, "trash")
                end
            end
        end
    end

    return allComplete, "trash", allComplete
end

-- ============================================================
-- Action: bank
-- ============================================================
GuideViewer.ActionHandlers.bank = function(self, step, silent)
    if not step.objectives then return false end
    local allComplete = true

    for index, obj in ipairs(step.objectives) do
        if obj.type == "bank" and not obj.isComplete then
            -- Build label
            if obj.item then
                obj.label = "Store |cffaaff88" .. obj.item .. "|r in the bank"
            else
                obj.label = "Store item in the bank"
            end

            local itemID = obj.itemID
            if not itemID then
                IronPath:DebugPrint("Bank objective[" .. index .. "] missing itemID.", "warn")
                allComplete = false
            else
                local found = false
                for bag = 0, 4 do
                    local slots = C_Container.GetContainerNumSlots(bag)
                    for slot = 1, slots do
                        local item = C_Container.GetContainerItemInfo(bag, slot)
                        if item and item.itemID == itemID then
                            found = true
                            break
                        end
                    end
                    if found then break end
                end

                if found then
                    allComplete = false
                else
                    obj.isComplete = true
                    IronPath:DebugPrint("Bank objective[" .. index .. "] complete. ItemID: " .. itemID, "bank")
                end
            end
        end
    end

    return allComplete, "bank", allComplete
end

-- ============================================================
-- Action: tip
-- ============================================================
GuideViewer.ActionHandlers.tip = function(self, step, silent)
    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "tip" then
            if obj.text then
                obj.label = "|cffaaaaaa" .. obj.text .. "|r"
            else
                obj.label = "|cffaaaaaa(Tip missing text)|r"
            end
        end
    end

    return false, "tip", false
end

-- ============================================================
-- Action: skillmax
-- ============================================================
-- Purpose:
--   Verifies whether a specified profession or skill has reached
--   a required maximum rank (e.g., 75/75).
--
-- Logic:
--   - For each "skillmax" objective:
--       • Locate the skill in the skill list.
--       • If found, compare its max rank to the required value.
--       • If the requirement is met, mark as complete.
--       • If not found or below max, mark step as incomplete.
--
-- Returns:
--   true/false, "skillmax", true/false
--     → Whether all skillmax objectives are complete.
--
-- Example Objective:
--   { type = "skillmax", skill = "Herbalism", max = 75, ... }
-- ============================================================
GuideViewer.ActionHandlers.skillmax = function(self, step, silent)
    local allComplete = true

    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "skillmax" and not obj.isComplete then
            local skillName = obj.skillmax
            local requiredMax = obj.skillmaxLevel or 0
            local found = false

            for i = 1, GetNumSkillLines() do
                local name, _, _, _, _, _, maxRank = GetSkillLineInfo(i)
                if name == skillName then
                    found = true
                    if maxRank >= requiredMax then
                        obj.isComplete = true
                        IronPath:DebugPrint(
                            "Skillmax met: " .. name .. " max=" .. maxRank,
                            "skillmax")
                    else
                        allComplete = false
                        IronPath:DebugPrint(
                            "Skillmax not met: " .. name .. " max=" .. maxRank ..
                            "/" .. requiredMax, "skillmax")
                    end
                    break
                end
            end

            if not found then
                allComplete = false
                IronPath:DebugPrint("Skill not found: " .. tostring(skillName),
                    "skillmax")
            end
        end
    end

    return allComplete, "skillmax", allComplete
end










-- ============================================================
-- Action: vendor
-- ============================================================
-- Purpose:
--   Marks the step complete when the player opens a vendor.
--   Also auto-sells grey items and optionally repairs gear.
--
-- Logic:
--   - Registers for the `MERCHANT_SHOW` event.
--   - When fired, performs auto-sell and auto-repair if enabled.
--   - Marks all "vendor" objectives as complete.
--   - Flags the step complete and stores it in db.char.vendorSteps.
--   - Triggers a `GuideViewer:ShowStep()` refresh.
--
-- Settings Used:
--   • autoSellGrey – Automatically sells grey items.
--   • autoRepair – Automatically repairs gear if possible.
--
-- Fields Required:
--   • type = "vendor"
--
-- Returns:
--   false        (initially not complete),
--   "vendor"     (handler name),
--   false        (initially not complete)
--
-- Example Objective:
--   {
--     type = "vendor",
--     npc = "Some Vendor",
--     npcID = 1234,
--     ...
--   }
-- ============================================================
GuideViewer.ActionHandlers.vendor = function(self, step, silent)
    if step._wasComplete then return true, "vendor", true end

    return false, "vendor", false
end

-- ============================================================
-- Action: note
-- ============================================================
GuideViewer.ActionHandlers.note = function(self, step, silent)
    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "note" then
            if obj.item and obj.itemID then
                -- Treat as a buy-style note
                local qty = obj.quantity or 1
                if qty > 1 then
                    obj.label = "Buy |cffffff99" .. obj.item .. " (" .. qty .. ")|r"
                else
                    obj.label = "Buy |cffffff99" .. obj.item .. "|r"
                end
            elseif obj.target then
                -- Treat as kill-style note
                obj.label = "Kill |cffff4444" .. obj.target .. "|r"
            else
                -- Fallback to tip/note style
                local text = obj.label or "(note missing content)"
                obj.label = "|cffffff99" .. text .. "|r"
            end
        end
    end

    return false, "note", false
end


-- ============================================================
-- Action: walkNote
-- ============================================================
GuideViewer.ActionHandlers.walkNote = function(self, step, silent)
    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "walkNote" then
            -- Ensure label is blue-colored
            if obj.label and not obj.label:find("|cff") then
                obj.label = "|cff80dfff" .. obj.label .. "|r"
            end
            obj.isComplete = nil -- Never completes
        end
    end

    return false, "walkNote", false
end

-- ============================================================
-- Action: goTo
-- ============================================================
-- Purpose:
--   Marks an objective as complete when the player reaches a
--   specified coordinate in the world.
--
-- Logic:
--   1. Uses HereBeDragons to get the player's current world position.
--   2. Converts the objective's zone-relative coords to world coords.
--   3. Compares the two; if distance ≤ 5 yards, objective is marked complete.
--
-- Fields Required:
--   • type = "goTo"
--   • coords = {
--       x = <number>,
--       y = <number>,
--       zone = <string> (optional but recommended)
--     }
--
-- Returns:
--   allComplete  (true if all goTo objectives are done),
--   "goTo"       (handler name),
--   allComplete  (again for confirmation)
--
-- Example Objective:
--   {
--     type = "goTo",
--     coords = { zone = "Elwynn Forest", x = 42.1, y = 65.3 }
--   }
-- ============================================================
GuideViewer.ActionHandlers.goTo = function(self, step, silent)
    local allComplete = true

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "goTo" and obj.coords and not obj.isComplete then
            local px, py, instance = HBD:GetPlayerWorldPosition()
            if not px or not py or not instance then
                allComplete = false
            else
                local mapID = C_Map.GetBestMapForUnit("player")
                local zx, zy = obj.coords.x / 100, obj.coords.y / 100
                local tx, ty, inst2 = HBD:GetWorldCoordinatesFromZone(zx, zy,
                    mapID)

                if tx and ty and instance == inst2 then
                    local dx, dy = tx - px, ty - py
                    local dist = math.sqrt(dx * dx + dy * dy)
                    if dist <= 5 then
                        obj.isComplete = true
                        IronPath:DebugPrint(
                            "goTo complete (dist=" .. dist .. ")", "goTo")
                    else
                        allComplete = false
                    end
                else
                    allComplete = false
                end
            end
        end
    end
    return allComplete, "goTo", allComplete
end

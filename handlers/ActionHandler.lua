local IronPath = _G.IronPath
local GuideViewer = _G.IronPathViewer
local HBD = LibStub("HereBeDragons-2.0")

GuideViewer.ActionHandlers = {}

-- ============================================================
-- Action: obj
-- ============================================================
-- Purpose:
--   Tracks a specific objective within an active quest.
--
-- Logic:
--   - For each "obj" objective:
--       • If the quest is flagged as completed, mark objective complete.
--       • If not completed, but qindex is defined, check that specific quest
--         objective's `.finished` state using C_QuestLog.GetQuestObjectives.
--       • If that objective is finished, mark it complete.
--
-- Use Case:
--   Useful for monitoring sub-objectives of a quest rather than completion alone.
--
-- Fields Required:
--   • qid     = Quest ID to check.
--   • qindex  = (Optional) Specific objective index from quest log.
--
-- Returns:
--   allComplete (true if all "obj" objectives complete),
--   "obj"       (handler name),
--   allComplete (again as confirmation)
--
-- Example Objective:
--   {
--     type = "Obj",
--     qid = 123,
--     qindex = 2,
--     ...
--   }
-- ============================================================
GuideViewer.ActionHandlers.obj = function(self, step, silent)
    local allComplete = true
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
-- Action: walk
-- ============================================================
-- Purpose:
--   Marks the step complete if:
--     - obj.condition (Lua expression) is true
--     - AND distance to obj.coords meets coords.condition
--
-- Returns:
--   true,  "walk", true   → if walk condition is met
--   false, "walk", false  → otherwise
-- ============================================================
GuideViewer.ActionHandlers.walk = function(self, step, silent)
    local HBD = LibStub("HereBeDragons-2.0")

    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "walk" and obj.coords then
            -- Colorize label if not already colored
            if obj.label and not obj.label:find("|cff") then
                obj.label = "|cff80dfff" .. obj.label .. "|r"
            end
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
                    return nil -- explicitly no condition
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
                if op == "<" then
                    return dist < val
                elseif op == ">" then
                    return dist > val
                elseif op == "=" then
                    return math.abs(dist - val) < 2
                end

                return false
            end

            local hasObjCond = obj.condition ~= nil
            local hasCoordCond = obj.coords and obj.coords.condition ~= nil
            local passesObjCond = CheckObjCondition()

            -- Hide objective entirely if obj.condition is false
            if not passesObjCond then
                IronPath:DebugPrint("walk: obj.condition false — hiding step", "walk")
                return nil, "walk", false
            end

            -- Prevent completion if neither condition exists
            if not hasObjCond and not hasCoordCond then
                IronPath:DebugPrint("walk: no conditions defined — objective is non-completable", "walk")
                return false, "walk", false
            end

            -- Complete only if both conditions pass
            if (hasObjCond or hasCoordCond) and passesObjCond and CheckCoordsCondition() then
                IronPath:DebugPrint("walk: all conditions passed — marking complete", "walk")
                obj.isComplete = true
                step._wasComplete = true
                return true, "walk", true
            end

            -- Setup polling if not already running
            if not obj._walkPoller then
                local f = CreateFrame("Frame")
                f:SetScript("OnUpdate", function(self)
                    if not CheckObjCondition() then return end

                    -- Abort polling if no coords.condition (not completable)
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
-- Action: accept
-- ============================================================
-- Purpose:
--   Checks if a quest has been accepted or is already completed.
--
-- Logic:
--   - Iterates over step objectives of type "accept".
--   - If the quest is flagged as completed or exists in the quest log,
--     marks the objective and step as complete.
--
-- Returns:
--   true,  "accept", true   → if quest is accepted or completed.
--   false, "accept", false  → otherwise.
--
-- Example Objective:
--   { type = "accept", qid = 123, ... }
-- ============================================================
GuideViewer.ActionHandlers.accept = function(self, step, silent)
    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "accept" and obj.qid then
            local qid = obj.qid
            local inLog = GetQuestLogIndexByID(qid)
            if C_QuestLog.IsQuestFlaggedCompleted(qid) or (inLog and inLog > 0) then
                obj.isComplete = true
                step._wasComplete = true
                return true, "accept", true
            end
        end
    end
    return false, "accept", false
end

-- ============================================================
-- Action: turnin
-- ============================================================
-- Purpose:
--   Checks if the quest has been turned in (completed) by the player.
--
-- Logic:
--   - Iterates over step objectives of type "turnin".
--   - If the quest is flagged as completed, marks the objective as complete.
--   - Tracks if any objectives were changed and whether all are complete.
--
-- Returns:
--   allComplete, "turnin", allComplete
--     → allComplete is true if all "turnin" objectives are completed.
--
-- Example Objective:
--   { type = "turnin", qid = 456, ... }
-- ============================================================
GuideViewer.ActionHandlers.turnin = function(self, step, silent)
    local allComplete, changed = true, false

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "turnin" and not obj.isComplete and obj.qid then
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
-- Action: home
-- ============================================================
-- Purpose:
--   Checks whether the player's hearthstone has been set to the specified location.
--
-- Logic:
--   - If the step was already marked complete, returns success immediately.
--   - Compares the player's current bind location with the desired hearthLocation.
--   - If it matches (case-insensitive), marks the objective and step as complete.
--
-- Returns:
--   true/false, "home", true/false
--     → Whether the objective is complete and the handler succeeded.
--
-- Example Objective:
--   { type = "home", hearthLocation = "Goldshire", ... }
-- ============================================================
GuideViewer.ActionHandlers.home = function(self, step, silent)
    if step._wasComplete then return true, "home", true end

    local hearthZone = GetBindLocation() or ""
    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "home" and not obj.isComplete then
            if hearthZone:lower():find(obj.hearthLocation:lower()) then
                obj.isComplete = true
                step._wasComplete = true
                IronPath:DebugPrint("Hearth set to: " .. hearthZone, "home")
                return true, "home", true
            else
                IronPath:DebugPrint("Hearth not set yet. Current: " .. hearthZone .. ", Wanted: " .. obj.hearthLocation,
                    "home")
                return false, "home", false
            end
        end
    end

    return false, "home", false
end

-- ============================================================
-- Action: buy
-- ============================================================
-- Purpose:
--   Checks if the player has purchased or possesses the required item(s).
--
-- Logic:
--   - For each "buy" objective, check the player's inventory count.
--   - Prefer using itemID; fallback to item name if itemID is missing.
--   - If the player has enough quantity, mark the objective complete.
--   - If not enough items are found, mark the overall step as incomplete.
--
-- Returns:
--   true/false, "buy", true/false
--     → Whether all buy objectives are complete.
--
-- Example Objective:
--   { type = "buy", item = "Mild Spices", itemID = 2678, quantity = 3, ... }
-- ============================================================
GuideViewer.ActionHandlers.buy = function(self, step, silent)
    local allComplete = true

    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "buy" and not obj.isComplete then
            local itemID = tonumber(obj.itemID)
            local needed = obj.quantity or 1
            local have = 0

            -- Try by itemID first
            if itemID then
                have = GetItemCount(itemID, false)
            end

            -- Fallback by name if needed
            if have < needed and obj.item then
                have = GetItemCount(obj.item, false)
                IronPath:DebugPrint(
                    "Fallback name check: " .. obj.item .. ", count=" .. have .. "/" .. needed,
                    "buy"
                )
            end

            -- Update label
            local qtyText = (needed > 1) and (needed .. " ") or ""
            obj.label = qtyText .. (obj.item or "Item") .. " (" .. have .. "/" .. needed .. ")"

            if have >= needed then
                obj.isComplete = true
                IronPath:DebugPrint(
                    "Buy complete: " .. (obj.item or ("itemID=" .. tostring(itemID))) ..
                    ", count=" .. have .. "/" .. needed,
                    "buy"
                )
            else
                allComplete = false
                IronPath:DebugPrint(
                    "Buy not complete: " .. (obj.item or ("itemID=" .. tostring(itemID))) ..
                    ", count=" .. have .. "/" .. needed,
                    "buy"
                )
            end
        end
    end

    return allComplete, "buy", allComplete
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
-- Action: trash
-- ============================================================
-- Purpose:
--   Checks if a specific item (by itemID) has been removed from
--   the player's bags (i.e., "trashed").
--
-- Logic:
--   - For each "trash" objective:
--       • If itemID is missing, print a warning and mark step incomplete.
--       • Scan all player bags (0 to 4).
--       • If the item is found, the objective is still incomplete.
--       • If the item is NOT found, mark the objective as complete.
--
-- Returns:
--   true/false, "trash", true/false
--     → Whether all trash objectives are complete.
--
-- Example Objective:
--   { type = "trash", item = "Hearthstone", itemID = 6948, ... }
-- ============================================================
GuideViewer.ActionHandlers.trash = function(self, step, silent)
    if not step.objectives then return false end
    local allComplete = true

    for index, obj in ipairs(step.objectives) do
        if obj.type == "trash" and not obj.isComplete then
            local itemID = obj.itemID
            if not itemID then
                IronPath:DebugPrint("Trash objective[" .. index ..
                    "] missing itemID.", "warn")
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
                    IronPath:DebugPrint("Trash objective[" .. index ..
                        "] complete. ItemID: " .. itemID,
                        "trash")
                end
            end
        end
    end

    return allComplete, "trash", allComplete
end

-- ============================================================
-- Action: bank
-- ============================================================
-- Purpose:
--   Checks if a specific item (by itemID) has been removed from
--   the player's bags (i.e., "banked").
--
-- Logic:
--   - For each "bank" objective:
--       • If itemID is missing, print a warning and mark step incomplete.
--       • Scan all player bags (0 to 4).
--       • If the item is found, the objective is still incomplete.
--       • If the item is NOT found, mark the objective as complete.
--
-- Returns:
--   true/false, "bank", true/false
--     → Whether all bank objectives are complete.
--
-- Example Objective:
--   { type = "bank", item = "Copper Ore", itemID = 2770, ... }
-- ============================================================
GuideViewer.ActionHandlers.bank = function(self, step, silent)
    if not step.objectives then return false end
    local allComplete = true

    for index, obj in ipairs(step.objectives) do
        if obj.type == "bank" and not obj.isComplete then
            local itemID = obj.itemID
            if not itemID then
                IronPath:DebugPrint("Bank objective[" .. index ..
                    "] missing itemID.", "warn")
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
                    IronPath:DebugPrint("Bank objective[" .. index ..
                        "] complete. ItemID: " .. itemID,
                        "bank")
                end
            end
        end
    end

    return allComplete, "bank", allComplete
end

-- ============================================================
-- Action: fpath
-- ============================================================
-- Purpose:
--   Tracks whether the player has discovered a flight path.
--
-- Logic:
--   - For each "fpath" objective:
--       • Check if it has valid coordinates and a label.
--       • If the fpath is already known (cached in db.char.fpaths), mark complete.
--       • If not known, check if the player is within 10 yards of the target coords.
--         If so, assume the fpath has been discovered, cache it, and mark complete.
--
-- Requirements:
--   - Uses HereBeDragons to compare player position to target.
--   - Requires zone name and coordinates in the objective.
--
-- Returns:
--   anyValid (whether any valid fpath objectives exist),
--   "fpath" (handler name),
--   isComplete (if at least one was marked complete)
--
-- Example Objective:
--   {
--     type = "fpath",
--     label = "Lakeshire",
--     coords = { zone = "Redridge Mountains", x = 32.0, y = 48.7 },
--     ...
--   }
-- ============================================================
GuideViewer.ActionHandlers.fpath = function(self, step)
    if not IronPath.db or not IronPath.db.char then
        IronPath:DebugPrint("No DB or character data found", "fpath")
        return false, "fpath", false
    end

    local fpaths = IronPath.db.char.fpaths or {}
    IronPath.db.char.fpaths = fpaths

    -- Check if already complete
    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "fpath" and obj.label then
            local label = obj.label:match("^(.-),") or obj.label
            label = label:match("^%s*(.-)%s*$"):lower()

            for knownName in pairs(fpaths) do
                if knownName:find(label, 1, true) or
                    label:find(knownName, 1, true) then
                    obj.isComplete = true
                    step._wasComplete = true
                    IronPath:DebugPrint("Matched known fpath: " .. knownName ..
                        " ~= " .. label, "fpath")
                    return true, "fpath", true
                end
            end
        end
    end

    -- Learn new nodes
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
                        IronPath:DebugPrint("Discovered fpath: " .. base,
                            "fpath")
                    end
                end
            end
        end
    end

    return false, "fpath", false
end

-- ============================================================
-- Action: trainer
-- ============================================================
-- Purpose:
--   Marks the step complete when the player opens a class trainer.
--
-- Logic:
--   - If the step was previously completed, return early.
--   - Registers for the `TRAINER_SHOW` event.
--   - When the event fires, marks all "trainer" objectives as complete.
--   - Triggers a `GuideViewer:ShowStep()` refresh.
--
-- Use Case:
--   Useful for prompting users to visit a trainer (e.g., after leveling).
--
-- Fields Required:
--   • type = "trainer"
--
-- Returns:
--   false        (initially not complete),
--   "trainer"    (handler name),
--   false        (initially not complete)
--
-- Example Objective:
--   {
--     type = "trainer",
--     ...
--   }
-- ============================================================
GuideViewer.ActionHandlers.trainer = function(self, step, silent)
    -- if step._wasComplete then return true, "trainer", true end

    -- local function OnTrainerOpen()

    -- end

    -- local frame = CreateFrame("Frame")
    -- frame:RegisterEvent("TRAINER_SHOW")
    -- frame:SetScript("OnEvent", function(_, event)
    --     if event == "TRAINER_SHOW" then OnTrainerOpen() end
    -- end)

    -- return false, "trainer", false
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
-- Action: learnspell
-- ============================================================
-- Purpose:
--   Marks objectives complete when the player learns a specific spell.
--
-- Logic:
--   - Iterates over all "learnspell" objectives in the step.
--   - If the `spellID` is known (via `IsSpellKnown`), the objective is marked complete.
--   - If any required spell is not known, the step is not complete.
--
-- Fields Required:
--   • type = "learnspell"
--   • spellID = <number>
--
-- Returns:
--   allComplete  (true if all required spells are learned),
--   "learnspell" (handler name),
--   allComplete  (again for confirmation)
--
-- Example Objective:
--   {
--     type = "learnspell",
--     spellID = 403,
--     label = "Lightning Bolt"
--   }
-- ============================================================
GuideViewer.ActionHandlers.learnspell = function(self, step, silent)
    local allComplete = true
    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "learnspell" and obj.spellID and not obj.isComplete then
            if IsSpellKnown(obj.spellID) then
                obj.isComplete = true
                IronPath:DebugPrint("Learned spell " .. obj.spellID, "learn")
            else
                allComplete = false
            end
        end
    end
    return allComplete, "learnspell", allComplete
end

-- ============================================================
-- Action: collect
-- ============================================================
-- Purpose:
--   Marks collect objectives complete when the player has gathered
--   the required number of items.
--
-- Logic:
--   1. If the related quest is already completed and `future` is not true,
--      the objective is marked complete.
--   2. If the objective has a quest ID (`qid`) and quest index (`qindex`),
--      it pulls current progress from `C_QuestLog.GetQuestObjectives`.
--   3. If no quest ID exists, it falls back to checking the player's
--      inventory via `GetItemCount(itemID, includeBank=true)`.
--
-- Fields Required:
--   • type = "collect"
--   • item = <string> (item name)
--   • itemID = <number> (optional but preferred)
--   • quantity = <number>
--   • qid = <number> (optional)
--   • qindex = <number> (optional)
--   • future = true (optional; skips auto-complete on quest finish)
--
-- Dynamic Label Update:
--   Updates label to show current count like:
--   "5 Tough Wolf Meat (3/5)"
--
-- Returns:
--   allComplete  (true if all collect objectives are done),
--   "collect"    (handler name),
--   allComplete  (again for confirmation)
--
-- Example Objective:
--   {
--     type = "collect",
--     item = "Tough Wolf Meat",
--     itemID = 750,
--     quantity = 5,
--     qid = 33,
--     qindex = 1
--   }
-- ============================================================
GuideViewer.ActionHandlers.collect = function(self, step, silent)
    local allComplete = true

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "collect" then
            local skip = false

            -- ✅ Early skip if quest is complete
            if obj.qid and C_QuestLog.IsQuestFlaggedCompleted(obj.qid) and
                not obj.future then
                obj.isComplete = true
                IronPath:DebugPrint("Collect objective[" .. index ..
                    "] skipped: Quest " .. obj.qid ..
                    " already completed.", "collect")
                skip = true
            end

            if not skip then
                -- Extract quantity from label if present
                if not obj.quantity and obj.label then
                    local qty, rest = obj.label:match("^(%d+)%s+(.+)")
                    if qty and rest then
                        obj.quantity = tonumber(qty)
                        obj.item = rest
                        obj.qid = nil -- Ignore quest tracking
                        obj.qindex = nil
                    end
                end

                obj.quantity = obj.quantity or 1
                obj.item = obj.item or obj.label or "Item"

                if obj.quantity > 1 or (obj.label and obj.label:match("^%d+%s")) then
                    local count = GetItemCount(obj.itemID or 0, true) or 0
                    local qtyText = obj.quantity > 1 and (obj.quantity .. " ") or ""
                    obj.label = "Collect: |cffff9900" ..
                        qtyText .. obj.item .. "|r (" .. count .. "/" .. obj.quantity .. ")"


                    if count >= obj.quantity then
                        obj.isComplete = true
                        IronPath:DebugPrint("Collect (bag) complete (" .. count .. "/" .. obj.quantity .. ")", "collect")
                    else
                        allComplete = false
                    end
                else
                    -- Use quest tracking
                    if obj.qid and obj.qindex then
                        local q = C_QuestLog.GetQuestObjectives(obj.qid)
                        local o = q and q[obj.qindex]
                        if o then
                            local have, need = o.numFulfilled or 0,
                                o.numRequired or obj.quantity
                            obj.label = "Collect: |cffff9900" .. obj.item .. "|r (" .. have .. "/" .. need .. ")"

                            if have >= need then
                                obj.isComplete = true
                                IronPath:DebugPrint(
                                    "Collect (quest) complete (" .. have .. "/" ..
                                    need .. ")", "collect")
                            else
                                allComplete = false
                            end
                        else
                            allComplete = false
                            IronPath:DebugPrint(
                                "Collect objective[" .. index ..
                                "] missing quest objective data", "collect")
                        end
                    else
                        allComplete = false
                    end
                end

                if not obj.isComplete then allComplete = false end
            end
        end
    end

    return allComplete, "collect", allComplete
end

-- ============================================================
-- Action: kill
-- ============================================================
-- Purpose:
--   Tracks progress for kill objectives tied to a quest.
--
-- Logic:
--   1. If the associated quest (`qid`) is already completed, the
--      kill objective is auto-completed.
--   2. If the objective has a `qid` and `qindex`, it fetches the
--      current progress from `C_QuestLog.GetQuestObjectives`.
--   3. Updates the label to show real-time count like:
--      "Kill: TargetName (3/5)"
--
-- Fields Required:
--   • type = "kill"
--   • target = <string> (name of enemy)
--   • qid = <number>
--   • qindex = <number>
--
-- Returns:
--   allComplete  (true if all kill objectives are done),
--   "kill"       (handler name),
--   allComplete  (again for confirmation)
--
-- Example Objective:
--   {
--     type = "kill",
--     target = "Gnoll",
--     qid = 123,
--     qindex = 1
--   }
-- ============================================================
GuideViewer.ActionHandlers.kill = function(self, step, silent)
    local allComplete = false

    -- Passive quest completion check
    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "kill" and obj.qid and
            C_QuestLog.IsQuestFlaggedCompleted(obj.qid) then
            obj.isComplete = true
            IronPath:DebugPrint("Quest " .. obj.qid ..
                " already complete. Marking kill objective done.",
                "kill")
        end
    end

    -- Regular progress tracking
    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "kill" and not obj.isComplete and obj.qid and obj.qindex then
            local q = C_QuestLog.GetQuestObjectives(obj.qid)
            local o = q and q[obj.qindex]
            if o then
                local have, need = o.numFulfilled or 0, o.numRequired or 1
                obj.label =
                    "Kill|cffff4444 " .. obj.target .. "|r (" .. have .. "/" .. need .. ")"
                if have >= need then
                    obj.isComplete = true
                    IronPath:DebugPrint(
                        "Kill complete (" .. have .. "/" .. need .. ")", "kill")
                else
                    allComplete = false
                end
            else
                allComplete = false
                IronPath:DebugPrint("Kill objective[" .. index ..
                    "] missing quest objective data", "kill")
            end
        end
    end

    return allComplete, "kill", allComplete
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

-- ============================================================
-- Action: ding
-- ============================================================
-- Purpose:
--   Tracks whether the player has reached a specified level,
--   and optionally a specific amount of XP within that level.
--
-- Logic:
--   1. Gets the player's current level and XP.
--   2. Compares it to the required level and XP from the step.
--   3. If the player meets or exceeds the requirement, marks it complete.
--   4. If not, updates the objective label with progress percentage.
--
-- Fields Required:
--   • type = "ding"
--   • level = <number>
--   • xp (optional) = <number>
--
-- Returns:
--   allComplete  (true if all ding objectives are done),
--   "ding"       (handler name),
--   allComplete  (again for confirmation)
--
-- Example Objective:
--   {
--     type = "ding",
--     level = 10,
--     xp = 6500  -- optional
--   }
-- ============================================================
GuideViewer.ActionHandlers.ding = function(self, step, silent)
    local level = UnitLevel("player")
    local xp = UnitXP("player")
    local maxXP = UnitXPMax("player")

    local allComplete = true

    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "ding" and not obj.isComplete then
            local requiredLevel = obj.level or 0
            local requiredXP = obj.xp or 0

            if level > requiredLevel or
                (level == requiredLevel and xp >= requiredXP) then
                obj.isComplete = true
                IronPath:DebugPrint(
                    "ding complete: level=" .. level .. ", xp=" .. xp, "ding")
            else
                allComplete = false
                local percent
                local colorOpen = "|cffffcc00"
                local colorClose = "|r"

                if level == requiredLevel then
                    if requiredXP > 0 then
                        percent = math.floor((xp / requiredXP) * 100)
                        obj.label = colorOpen ..
                            "Reach Level " ..
                            requiredLevel .. " & " .. requiredXP .. "xp " .. "(" .. percent .. "%)" .. colorClose
                    else
                        percent = math.floor((xp / maxXP) * 100)
                        obj.label = colorOpen .. "Reach Level " .. requiredLevel .. " " ..
                            "(" .. percent .. "%)" ..
                            colorClose
                    end
                else
                    percent = math.floor((xp / maxXP) * 100)
                    obj.label = colorOpen .. "Reach Level " .. requiredLevel .. " " ..
                        "(" .. percent .. "%)" ..
                        colorClose
                end
            end
        end
    end

    return allComplete, "ding", allComplete
end

local IronPath = _G.IronPath
local GuideViewer = _G.IronPathViewer
local HBD = LibStub("HereBeDragons-2.0")

GuideViewer.ActionHandlers = {}

-- ============================================================
-- Action: accept
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
GuideViewer.ActionHandlers.turnin = function(self, step, silent)
    local allComplete, changed = true, false
    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "turnin" and not obj.isComplete and obj.qid then
            if C_QuestLog.IsQuestFlaggedCompleted(obj.qid) then
                obj.isComplete = true
                changed = true
                IronPath:DebugPrint("Turnin objective[" .. index ..
                                        "] complete. QID=" .. obj.qid, "turnin")
            else
                allComplete = false
            end
        end
    end
    return allComplete, "turnin", allComplete
end

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
                IronPath:DebugPrint("Hearth not set yet. Current: " ..
                                        hearthZone .. ", Wanted: " ..
                                        obj.hearthLocation, "home")
                return false, "home", false
            end
        end
    end

    return false, "home", false
end

GuideViewer.ActionHandlers.buy = function(self, step, silent)
    local allComplete = true

    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "buy" and not obj.isComplete then
            local itemID = tonumber(obj.itemID)
            local needed = obj.quantity or 1
            local have = 0

            if itemID then have = GetItemCount(itemID, false) end

            -- If nothing found by ID, try name fallback
            if have < needed and obj.item then
                have = GetItemCount(obj.item, false)
                IronPath:DebugPrint("Fallback name check: " .. obj.item ..
                                        ", count=" .. have .. "/" .. needed,
                                    "buy")
            end

            if have >= needed then
                obj.isComplete = true
                IronPath:DebugPrint("Buy complete: " ..
                                        (obj.item or
                                            ("itemID=" .. tostring(itemID))) ..
                                        ", count=" .. have .. "/" .. needed,
                                    "buy")
            else
                allComplete = false
                IronPath:DebugPrint("Buy not complete: " ..
                                        (obj.item or
                                            ("itemID=" .. tostring(itemID))) ..
                                        ", count=" .. have .. "/" .. needed,
                                    "buy")
            end
        end
    end

    return allComplete, "buy", allComplete
end

GuideViewer.ActionHandlers.skillmax = function(self, step, silent)
    local allComplete = true

    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "skillmax" and not obj.isComplete then
            local skillName = obj.skill
            local requiredMax = obj.max or 0
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
-- Action: trash – Destroy a specified item
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

GuideViewer.ActionHandlers.fpath = function(self, step)
    if not IronPath.db or not IronPath.db.char then return false, true, false end
    local fpaths = IronPath.db.char.fpaths or {}
    IronPath.db.char.fpaths = fpaths

    local isComplete = false
    local anyValid = false

    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "fpath" and obj.coords and obj.label then
            local label = obj.label
            local zone = obj.coords.zone

            -- Check if already learned
            if fpaths[label] then
                obj.isComplete = true
                isComplete = true
            else
                -- Check if we're near the coords
                local mapID = IronPath:GetMapIDFromZoneName(zone)
                if mapID then
                    local px, py, inst = HBD:GetPlayerWorldPosition()
                    local tx, ty, tinst =
                        HBD:GetWorldCoordinatesFromZone(obj.coords.x / 100,
                                                        obj.coords.y / 100,
                                                        mapID)

                    if px and py and tx and ty and inst == tinst then
                        local dx, dy = px - tx, py - ty
                        local dist = math.sqrt(dx * dx + dy * dy)
                        if dist < 10 then -- within 10 yards
                            fpaths[label] = true
                            obj.isComplete = true
                            isComplete = true
                            IronPath:DebugPrint(
                                "Discovered new fpath: " .. label, "fpath")
                        end
                    end
                end
            end

            anyValid = true
        end
    end

    return anyValid, "fpath", isComplete
end

GuideViewer.ActionHandlers.walkObj = function(self, step, silent)
    local allComplete = true

    for _, obj in ipairs(step.objectives or {}) do
        if obj.type == "walkObj" and not obj.isComplete then
            local isDone = false

            if obj.qid then
                -- Check if quest is already completed
                if C_QuestLog.IsQuestFlaggedCompleted(obj.qid) then
                    isDone = true
                elseif obj.qindex and C_QuestLog.GetQuestObjectives then
                    -- Otherwise, check specific objective
                    local objectives = C_QuestLog.GetQuestObjectives(obj.qid)
                    if objectives and objectives[obj.qindex] and
                        objectives[obj.qindex].finished then
                        isDone = true
                    end
                end
            end

            if isDone then
                obj.isComplete = true
                IronPath:DebugPrint("WalkObj complete: qid=" .. obj.qid ..
                                        " index=" .. (obj.qindex or "?"),
                                    "walkObj")
            else
                allComplete = false
            end
        end
    end

    return allComplete, "walkObj", allComplete
end
GuideViewer.ActionHandlers.trainer = function(self, step, silent)
    if step._wasComplete then return true, "trainer", true end

    local function OnTrainerOpen()
        IronPath:DebugPrint("TRAINER_SHOW fired.", "trainer")
        step._wasComplete = true
        for _, obj in ipairs(step.objectives or {}) do
            if obj.type == "trainer" then obj.isComplete = true end
        end
        GuideViewer:ShowStep()
    end

    local frame = CreateFrame("Frame")
    frame:RegisterEvent("TRAINER_SHOW")
    frame:SetScript("OnEvent", function(_, event)
        if event == "TRAINER_SHOW" then OnTrainerOpen() end
    end)

    return false, "trainer", false
end

GuideViewer.ActionHandlers.vendor = function(self, step, silent)
    local db = IronPath.db
    if not db then return false, "vendor", false end

    db.char.vendorSteps = db.char.vendorSteps or {}
    local currentStep = GuideViewer.currentStep or 1

    -- ✅ Check if current step is already completed
    if db.char.vendorSteps[currentStep] then
        step._wasComplete = true
        for _, obj in ipairs(step.objectives or {}) do
            if obj.type == "vendor" then obj.isComplete = true end
        end
        return true, "vendor", true
    end

    local function AutoSellAndRepair()
        local profile = db.profile
        if not profile then return end

        -- Auto-sell grey items
        if profile.autoSellGrey then
            for bag = 0, NUM_BAG_SLOTS do
                local slots = C_Container.GetContainerNumSlots(bag)
                for slot = 1, slots do
                    local itemLink = C_Container.GetContainerItemLink(bag, slot)
                    if itemLink then
                        local _, _, rarity, _, _, _, _, _, _, _, itemSellPrice =
                            GetItemInfo(itemLink)
                        local info = C_Container.GetContainerItemInfo(bag, slot)
                        if info and rarity == 0 and itemSellPrice > 0 then
                            C_Container.UseContainerItem(bag, slot)
                            IronPath:DebugPrint("Sold: " .. itemLink, "vendor")
                        end
                    end
                end
            end
        end

        -- Auto-repair
        if profile.autoRepair and CanMerchantRepair() then
            local cost = GetRepairAllCost()
            if cost > 0 then
                RepairAllItems()
                IronPath:DebugPrint("Auto-repaired. Cost: " ..
                                        GetCoinTextureString(cost), "vendor")
            end
        end
    end

    local function OnMerchantOpen()
        IronPath:DebugPrint("MERCHANT_SHOW fired.", "vendor")
        AutoSellAndRepair()

        -- ✅ Mark current step complete in char DB
        db.char.vendorSteps[currentStep] = true
        step._wasComplete = true
        for _, obj in ipairs(step.objectives or {}) do
            if obj.type == "vendor" then obj.isComplete = true end
        end
        GuideViewer:ShowStep()
    end

    local frame = CreateFrame("Frame")
    frame:RegisterEvent("MERCHANT_SHOW")
    frame:SetScript("OnEvent", function(_, event)
        if event == "MERCHANT_SHOW" then OnMerchantOpen() end
    end)

    return false, "vendor", false
end

-- ============================================================
-- Action: learnspell
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

GuideViewer.ActionHandlers.collect = function(self, step, silent)
    local allComplete = true

    for index, obj in ipairs(step.objectives or {}) do
        if obj.type == "collect" then
            local completedQuest = obj.qid and
                                       C_QuestLog.IsQuestFlaggedCompleted(
                                           obj.qid)

            -- Passive complete (only if NOT marked as future)
            if completedQuest and not obj.future then
                obj.isComplete = true
                IronPath:DebugPrint("Quest " .. obj.qid ..
                                        " already complete. Marking collect objective done.",
                                    "collect")
            end

            -- Active tracking
            if not obj.isComplete and obj.qid and obj.qindex then
                local q = C_QuestLog.GetQuestObjectives(obj.qid)
                local o = q and q[obj.qindex]
                if o then
                    local have, need = o.numFulfilled or 0, o.numRequired or 1
                    obj.label = (obj.item or obj.target or "Item") .. " (" ..
                                    have .. "/" .. need .. ")"
                    if have >= need then
                        obj.isComplete = true
                        IronPath:DebugPrint(
                            "Collect complete (" .. have .. "/" .. need .. ")",
                            "collect")
                    else
                        allComplete = false
                    end
                else
                    allComplete = false
                    IronPath:DebugPrint("Collect objective[" .. index ..
                                            "] missing quest objective data",
                                        "collect")
                end
            end

            if not obj.isComplete then allComplete = false end
        end
    end

    return allComplete, "collect", allComplete
end

-- ============================================================
-- Action: kill
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
                    "|cffFFFFFFKill:|r " .. obj.target .. " (" .. have .. "/" ..
                        need .. ")"
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
                        obj.label = "Reach Level " .. requiredLevel .. " & " ..
                                        requiredXP .. "xp " .. colorOpen .. "(" ..
                                        percent .. "%)" .. colorClose
                    else
                        percent = math.floor((xp / maxXP) * 100)
                        obj.label = "Reach Level " .. requiredLevel .. " " ..
                                        colorOpen .. "(" .. percent .. "%)" ..
                                        colorClose
                    end
                else
                    percent = math.floor((xp / maxXP) * 100)
                    obj.label = "Reach Level " .. requiredLevel .. " " ..
                                    colorOpen .. "(" .. percent .. "%)" ..
                                    colorClose
                end
            end
        end
    end

    return allComplete, "ding", allComplete
end


--============================================================
-- ActionHandler.lua – Modular action type handling
--============================================================
local GuideViewer = _G.IronPathViewer
GuideViewer.ActionHandlers = {}
local HBD = LibStub("HereBeDragons-2.0")

--============================================================
-- Icons =====================================================
--============================================================
talkIcon      = "|A:charactercreate-icon-customize-speechbubble-selected:16:16|a "
acceptIcon    = "|A:QuestNormal:16:16|a "
turninIcon    = "|A:QuestTurnin:16:16|a "
trainIcon     = "|A:Profession:16:16|a "
checkmarkIcon = "|A:checkmark-minimal:18:18:0:-1|a "
checkboxIcon  = "|A:checkbox-minimal:18:18:0:-1|a "
killIcon      = "|A:DungeonSkull:16:16:0:-1|a "
collectIcon    = "|A:Banker:16:16:0:-1|a "
destroyIcon   = "|A:XMarksTheSpot:16:16|a "
hearthIcon    = "|A:Innkeeper:16:16|a "
fpathIcon     = "|A:TaxiNode_Neutral:16:16|a "
learnIcon     = "|A:Class:16:16|a "
buyIcon       = "|A:Auctioneer:16:16|a "
blankIcon     = "|A:DungeonSkulls:16:16:0:-1|a  "

-- Colors
local green, yellow, red = "|cff00ff00", "|cffffff00", "|cffff0000"

-- Debug logging
local function DebugPrint(msg)
    if IronPath.db and IronPath.db.profile and IronPath.db.profile.debug then
        print("|cff8888ff[IronPath Debug]:|r " .. msg)
    end
end

-- Checkbox icon for completion display
local function CheckboxIcon(isComplete)
    return isComplete and checkmarkIcon or checkboxIcon
end

-- Automatically advance step if marked complete
function GuideViewer:CheckAndAdvanceStep(step, isComplete)
    local wasComplete = step._wasComplete or false
    step._wasComplete = isComplete
    IronPath.db.char.lastStep = self.currentStep
    if not wasComplete and isComplete and IronPath.db.profile.autoAdvanceStep then
        DebugPrint("Auto-advance: step complete.")
        local visible = self:GetVisibleSteps()
        for i, s in ipairs(visible) do
            if s == step then
                DebugPrint("Advancing to step " .. (i + 1))
                self.currentStep = i + 1
                IronPath.db.char.lastStep = self.currentStep
                C_Timer.After(0, function() self:ShowStep() end)
                return
            end
        end
        DebugPrint("|cffff0000❌ Could not find current step in visible list.")
    end
end

--============================================================
-- Action: collect – Collect items (possibly with kills)
--============================================================
GuideViewer.ActionHandlers.collect = function(self, step)
    local items    = type(step.item)   == "table" and step.item   or { step.item }
    local quests   = type(step.quest)  == "table" and step.quest  or { step.quest }
    local qids     = type(step.qid)    == "table" and step.qid    or { step.qid }
    local targets  = type(step.target) == "table" and step.target or { step.target }
    local isComplete = true
    local stepValid = false
    local lines = {}
    for i, item in ipairs(items) do
        local qid = qids[i] or qids[1]
        local objDone, objText = false, ""
        local color = yellow
        local inLog = false
        -- Check quest log for presence and completion
        for j = 1, GetNumQuestLogEntries() do
            local _, _, _, isHeader, _, _, _, questID = GetQuestLogTitle(j)
            if questID == qid and not isHeader then
                inLog = true
                break
            end
        end
        local completed = C_QuestLog.IsQuestFlaggedCompleted(qid)
        stepValid = stepValid or inLog or completed
        if completed then
            objDone, color = true, green
        elseif inLog then
            local objectives = C_QuestLog.GetQuestObjectives(qid) or {}
            for _, obj in ipairs(objectives) do
                if obj.text and obj.text:find(item, 1, true) then
                    objText = obj.text:match("(%d+/%d+)") or ""
                    objDone = obj.finished
                    if objDone then color = green end
                    break
                end
            end
        end
        if not objDone then isComplete = false end
        local icon = stepValid and CheckboxIcon(objDone) or destroyIcon
        table.insert(lines, string.format("%s" .. collectIcon .. "Collect: %s%s %s|r",
            icon, color, item, objText))
    end
    -- Optional kill line
    local killLine = ""
    if targets[1] then
        killLine = blankIcon .. killIcon .. "Kill: " .. (isComplete and green or yellow)
                 .. table.concat(targets, ", ") .. "|r\n"
    end
    -- Optional quest completion text
    if GuideViewer.questToCompleteLabel then
        local questName = quests[1] or "Unknown Quest"
        if #quests > 1 then questName = questName .. " + " .. (#quests - 1) end
        if step.quest then
            local questColor = isComplete and green or (stepValid and yellow or red)
            GuideViewer.questToCompleteLabel:SetText(turninIcon .. "Complete: " .. questColor .. questName .. "|r")
        else
            GuideViewer.questToCompleteLabel:SetText("")
            GuideViewer.questToCompleteLabel:Hide()
        end
    end
    self:CheckAndAdvanceStep(step, isComplete)
    return killLine .. table.concat(lines, "\n"), isComplete, stepValid
end

--============================================================
-- Action: destroy – Remove item from inventory
--============================================================
GuideViewer.ActionHandlers.destroy = function(self, step)
    local exists = false
    for bag = 0, NUM_BAG_SLOTS do
        for slot = 1, C_Container.GetContainerNumSlots(bag) do
            local info = C_Container.GetContainerItemInfo(bag, slot)
            if info and info.itemID and C_Item.GetItemNameByID(info.itemID) == step.item then
                exists = true
                break
            end
        end
        if exists then break end
    end
    local isComplete = not exists
    self:CheckAndAdvanceStep(step, isComplete)
    return CheckboxIcon(isComplete) .. destroyIcon .. "Destroy: " .. (isComplete and green or yellow) .. step.item .. "|r"
end

--============================================================
-- Action: hearthstone – Set Hearthstone
--============================================================
GuideViewer.ActionHandlers.hearthstone = function(self, step)
    local current = GetBindLocation() or ""
    local target  = step.location or ""
    local npc     = step.npc or "Innkeeper"
    local isComplete = current == target
    self:CheckAndAdvanceStep(step, isComplete)
    local color = isComplete and green or yellow
    return talkIcon .. "Talk To: " .. color .. npc .. "|r",
           CheckboxIcon(isComplete) .. hearthIcon .. "Set Hearthstone: " .. color .. target .. "|r"
end

--============================================================
-- Action: trainer – Visit a trainer (default, not skill-based)
--============================================================
GuideViewer.ActionHandlers.trainer = function(self, step, done)
    local isComplete = done or false
    self:CheckAndAdvanceStep(step, isComplete)
    return "", "|TInterface\\Icons\\INV_Scroll_06:14|t Trainer: " .. yellow .. "Class Trainer|r"
end

--============================================================
-- Action: fpath – Discover or use a Flight Path
--============================================================
GuideViewer.ActionHandlers.fpath = function(self, step)
    local isComplete = false
    local mapID = step.mapID or C_Map.GetBestMapForUnit("player")
    if mapID and step.taxiNode then
        local nodes = C_TaxiMap.GetAllTaxiNodes(mapID)
        for _, node in ipairs(nodes or {}) do
            if node.name == step.taxiNode and node.state == Enum.FlightPathState.Reachable then
                isComplete = true
                break
            end
        end
    end
    self:CheckAndAdvanceStep(step, isComplete)
    local color = isComplete and green or yellow
    return talkIcon .. "Talk To: " .. color .. (step.npc or "Unknown") .. "|r",
           CheckboxIcon(isComplete) .. fpathIcon .. "Flight Path: " .. color .. (step.taxiNode or "Unknown") .. "|r"
end

--============================================================
-- Action: kill – Kill specified targets (supports quest IDs)
--============================================================
GuideViewer.ActionHandlers.kill = function(self, step)
    local targets = type(step.target) == "table" and step.target or { step.target }
    local quests  = type(step.quest)  == "table" and step.quest  or { step.quest }
    local qids    = type(step.qid)    == "table" and step.qid    or { step.qid }
    local isComplete = false
    for _, qid in ipairs(qids) do
        if qid and C_QuestLog.IsQuestFlaggedCompleted(qid) then
            isComplete = true
            break
        end
    end
    local lines = {}
    if not isComplete then
        isComplete = true
        for _, target in ipairs(targets) do
            local matched, color, countStr, complete = false, yellow, "", false
            for _, qid in ipairs(qids) do
                local objectives = C_QuestLog.GetQuestObjectives(qid)
                if objectives then
                    for _, obj in ipairs(objectives) do
                        if obj.text and obj.text:find(target, 1, true) then
                            countStr = obj.text:match("(%d+/%d+)") or ""
                            if countStr ~= "" then countStr = " (" .. countStr .. ")" end
                            complete = obj.finished
                            color = complete and green or yellow
                            if not complete then isComplete = false end
                            matched = true
                            break
                        end
                    end
                end
                if matched then break end
            end
            if not matched then isComplete = false end
            table.insert(lines,
                CheckboxIcon(complete) .. killIcon .. "Kill: " .. color .. target .. countStr .. "|r"
            )
        end
    else
        for _, target in ipairs(targets) do
            table.insert(lines,
                CheckboxIcon(true) .. killIcon .. "Kill: " .. green .. target .. "|r"
            )
        end
    end
    self:CheckAndAdvanceStep(step, isComplete)
    local questName = quests[1] or "Unknown Quest"
    if #quests > 1 then questName = questName .. " + " .. (#quests - 1) end
    if GuideViewer.questToCompleteLabel then
        if step.quest then
            GuideViewer.questToCompleteLabel:SetText(turninIcon .. "Complete: " .. (isComplete and green or yellow) .. questName .. "|r")
        else
            GuideViewer.questToCompleteLabel:SetText("")
        end
    end
    return table.concat(lines, "\n")
end

--============================================================
-- Action: accept – Accept a quest
--============================================================
GuideViewer.ActionHandlers.accept = function(self, step, _)
    local isComplete = false
    -- Check if quest is flagged as completed
    if step.qid and C_QuestLog.IsQuestFlaggedCompleted(step.qid) then
        isComplete = true
    elseif step.qid and C_QuestLog.IsOnQuest(step.qid) then
        isComplete = true
    end
    self:CheckAndAdvanceStep(step, isComplete)
    local color  = isComplete and green or yellow
    local source = step.object or step.npc or "Unknown"
    -- Update Talk label
    if GuideViewer.talkToLabel then
        local verb = step.object and talkIcon .. "Click On: " or talkIcon .. "Talk To: "
        GuideViewer.talkToLabel:SetText(verb .. color .. source .. "|r")
    end
    GuideViewer.questToCompleteLabel:SetText("")
    GuideViewer.questToCompleteLabel:Hide()
    return CheckboxIcon(isComplete) .. acceptIcon .. "Accept: " .. color .. (step.quest or "Unknown Quest") .. "|r",
           isComplete
end

--============================================================
-- Action: turnin – Turn in a quest
--============================================================
GuideViewer.ActionHandlers.turnin = function(self, step, _)
    local isComplete = false
    local inLog = false
    -- Check quest log for presence and completion
    if step.qid then
        for i = 1, GetNumQuestLogEntries() do
            local title, _, _, isHeader, _, isCompleteFlag, _, questID = GetQuestLogTitle(i)
            if questID == step.qid and not isHeader then
                inLog = true
                isComplete = (isCompleteFlag == 1)
                break
            end
        end
        -- If not in log, check if completed via global fallback
        if not inLog then
            isComplete = C_QuestLog.IsQuestFlaggedCompleted(step.qid) -- Classic-compatible
        end
    end
    -- Step is valid only if quest is completed
    local stepValid = isComplete
    self:CheckAndAdvanceStep(step, isComplete)
    local source = step.object or step.npc or "Unknown"
    local verb   = step.object and talkIcon .. "Click On: " or talkIcon .. "Talk To: "
    if GuideViewer.talkToLabel then
        local labelColor = stepValid and green or red
        GuideViewer.talkToLabel:SetText(verb .. labelColor .. source .. "|r")
    end
    GuideViewer.questToCompleteLabel:SetText("")
    local actionColor = stepValid and green or red
    local icon = stepValid and CheckboxIcon(isComplete) or destroyIcon
    local actionLine = icon .. turninIcon .. "Turn in: " .. actionColor .. (step.quest or "Unknown Quest") .. "|r"
    return actionLine, isComplete, stepValid
end

--============================================================
-- Action: learn – Learn a spell or ability
--============================================================
GuideViewer.ActionHandlers.learn = function(self, step)
    local isComplete = step.spellID and IsSpellKnown(step.spellID)
    self:CheckAndAdvanceStep(step, isComplete)
    local color = isComplete and green or yellow
    -- See Talk label
    if GuideViewer.talkToLabel then
        if step.npc then
            GuideViewer.talkToLabel:SetText(talkIcon .. "Talk To: " .. color .. step.npc .. "|r")
        else
            GuideViewer.talkToLabel:SetText("")
        end
    end
    -- Return only action line and isComplete
    local actionLine = CheckboxIcon(isComplete)
        .. learnIcon .. "Learn: "
        .. color
        .. (step.spell or "Unknown Spell")
        .. "|r"
    return actionLine, isComplete
end

--============================================================
-- Action: grind – Reach a specific level
--============================================================
GuideViewer.ActionHandlers.grind = function(self, step, done)
    local level = UnitLevel("player")
    local isComplete = level >= step.level
    self:CheckAndAdvanceStep(step, isComplete)
    local color = isComplete and green or yellow
    return CheckboxIcon(isComplete) .. "Reach " .. color .. "Level " .. step.level .. "|r"
end

--============================================================
-- Action: train – Learn a profession or skill
--============================================================
GuideViewer.ActionHandlers.train = function(self, step, done)
    local isComplete = false
    -- Expand all skill headers
    for i = 1, GetNumSkillLines() do
        local name, isHeader, isExpanded = GetSkillLineInfo(i)
        if isHeader and not isExpanded then
            ExpandSkillHeader(i)
        end
    end
    -- Check for specific skill
    if step.skill then
        for i = 1, GetNumSkillLines() do
            local name = GetSkillLineInfo(i)
            if name == step.skill then
                isComplete = true
                break
            end
        end
    end
    self:CheckAndAdvanceStep(step, isComplete)
    local color = isComplete and green or yellow
    return talkIcon .. "Talk To: " .. color .. (step.npc or "Trainer") .. "|r",
           CheckboxIcon(isComplete) .. trainIcon .. "Train: " .. color .. (step.skill or "Unknown Skill") .. "|r"
end

--============================================================
-- Action: note – Display a tip or message
--============================================================
GuideViewer.ActionHandlers.note = function(self, step)
    local isComplete = false  -- force incomplete
    self:CheckAndAdvanceStep(step, isComplete)
    return "", "Note: " .. yellow .. (step.note or "No note provided.") .. "|r"
end

--============================================================
-- Action: use – Use an item or spell related to quest
--============================================================
GuideViewer.ActionHandlers.use = function(self, step, _)
    local itemList  = type(step.item) == "table" and step.item or { step.item or step.spell or "Item" }
    local qidList   = type(step.qid)  == "table" and step.qid  or { step.qid }
    local questList = type(step.quest) == "table" and step.quest or { step.quest }
    local isComplete = false
    for _, qid in ipairs(qidList) do
        if qid and C_QuestLog.IsQuestFlaggedCompleted(qid) then
            isComplete = true
            break
        end
    end
    local lines = {}
    if not isComplete then
        isComplete = true
        for _, itemName in ipairs(itemList) do
            local color, matched, countStr = yellow, false, ""
            for _, qid in ipairs(qidList) do
                if not C_QuestLog.IsOnQuest(qid) then
                    isComplete = false
                    matched = true
                    break
                end
                local objectives = C_QuestLog.GetQuestObjectives(qid)
                for _, obj in ipairs(objectives or {}) do
                    if obj.text and obj.text:find(itemName, 1, true) then
                        countStr = obj.text:match("(%d+/%d+)") or ""
                        color = obj.finished and green or yellow
                        if not obj.finished then isComplete = false end
                        matched = true
                        break
                    end
                end
                if matched then break end
            end
            table.insert(lines, "|TInterface\\Icons\\INV_Misc_EngGizmos_19:14|t Use: " .. color .. itemName .. countStr .. "|r")
        end
    else
        for _, itemName in ipairs(itemList) do
            table.insert(lines, "|TInterface\\Icons\\INV_Misc_EngGizmos_19:14|t Use: " .. green .. itemName .. "|r")
        end
    end
    self:CheckAndAdvanceStep(step, isComplete)
    local questLabel = questList[1] or "Unknown Quest"
    if #questList > 1 then
        questLabel = questLabel .. " + " .. (#questList - 1)
    end
    return "Complete: " .. (isComplete and green or yellow) .. questLabel .. "|r",
           table.concat(lines, "\n")
end

--============================================================
-- Action: click – Interact with object or item
--============================================================
GuideViewer.ActionHandlers.click = function(self, step, done)
    local isComplete = done or false
    self:CheckAndAdvanceStep(step, isComplete)
    local name = step.item or step.object or "Object"
    return "", "- Click: " .. yellow .. name .. "|r"
end

--============================================================
-- Action: complete – Mark a step as manually complete
--============================================================
GuideViewer.ActionHandlers.complete = function(self, step, done)
    local isComplete = done or false
    self:CheckAndAdvanceStep(step, isComplete)
    return "", "- Complete: " .. yellow .. (step.spell or step.quest or "Unknown") .. "|r"
end

--============================================================
-- Action: buy – Purchase item from vendor
--============================================================
GuideViewer.ActionHandlers.buy = function(self, step, done)
    local isComplete = done or false
    if step.itemID then
        local itemCount = C_Item.GetItemCount(step.itemID, true)
        if itemCount >= (step.quantity or 1) then
            isComplete = true
        end
    end
    self:CheckAndAdvanceStep(step, isComplete)
    local label = (step.quantity and step.quantity > 1)
        and string.format("%dx %s", step.quantity, step.item or "item")
        or (step.item or "item")
    local color = isComplete and green or yellow
    local npcLine = step.npc and (talkIcon .. "Talk To: " .. color .. step.npc .. "|r") or ""
    local actionLine = CheckboxIcon(isComplete) .. buyIcon .. "Buy: " .. color .. label .. "|r"
    return npcLine, actionLine
end

--============================================================
-- Action: buff – Receive or apply a buff
--============================================================
GuideViewer.ActionHandlers.buff = function(self, step, done)
    local isComplete = done or false
    self:CheckAndAdvanceStep(step, isComplete)
    return "", "- Buff: " .. yellow .. (step.tip or "Use /kneel") .. "|r"
end

--============================================================
-- Action: vendor – Sell items to merchant
--============================================================
GuideViewer.ActionHandlers.vendor = function(self, step, done)
    local isComplete = MerchantFrame and MerchantFrame:IsShown()
    -- Mark complete and advance once
    if isComplete and not step._wasComplete then
        step._wasComplete = true
        self:CheckAndAdvanceStep(step, true)
        C_Timer.After(0.25, function() self:ShowStep() end)
    end
    local color = isComplete and green or yellow
    -- Update Talk To label
    if GuideViewer.talkToLabel then
        if step.npc then
            GuideViewer.talkToLabel:SetText(talkIcon .. "Talk To: " .. color .. step.npc .. "|r")
        else
            GuideViewer.talkToLabel:SetText("")
        end
    end
    return "", isComplete
end

--============================================================
-- Action: walk – Go to coordinates
--============================================================
GuideViewer.ActionHandlers.walk = function(self, step)
    local isComplete = false
    if step.coords then
        local mapID = C_Map.GetBestMapForUnit("player")
        local zx, zy = step.coords[1] / 100, step.coords[2] / 100
        local tx, ty, ti = HBD:GetWorldCoordinatesFromZone(zx, zy, mapID)
        local px, py, pi = HBD:GetPlayerWorldPosition()
        if tx and ty and px and py and ti == pi then
            local dist = ((tx - px)^2 + (ty - py)^2)^0.5
            isComplete = dist <= 2
            DebugPrint(string.format("Walk distance: %.5f (complete: %s)", dist, tostring(isComplete)))
        else
            DebugPrint("Walk step: Unable to get coordinates or mismatch map.")
        end
    end
    self:CheckAndAdvanceStep(step, isComplete)
    -- Live checker (once)
    if not step._walkTicker then
        local wrapper = { nowComplete = false }
        wrapper.ticker = C_Timer.NewTicker(0.25, function()
            if wrapper.nowComplete then
                wrapper.ticker:Cancel()
                step._walkTicker = nil
                return
            end
            local complete = false
            if step.coords then
                local mapID = C_Map.GetBestMapForUnit("player")
                local zx, zy = step.coords[1] / 100, step.coords[2] / 100
                local tx, ty, ti = HBD:GetWorldCoordinatesFromZone(zx, zy, mapID)
                local px, py, pi = HBD:GetPlayerWorldPosition()
                if tx and ty and px and py and ti == pi then
                    local dist = ((tx - px)^2 + (ty - py)^2)^0.5
                    -- DebugPrint(dist)
                    isComplete = dist <= 2
                    wrapper.nowComplete = isComplete
                end
            end
            if wrapper.nowComplete and not step._wasComplete then
                DebugPrint("Walk Complete")
                self:CheckAndAdvanceStep(step, true)
                wrapper.ticker:Cancel()
                step._walkTicker = nil
                C_Timer.After(0, function() self:ShowStep() end)
            end
        end)
        step._walkTicker = wrapper
    end
    local color = isComplete and green or yellow
    return CheckboxIcon(isComplete) .. "Walk: " .. color .. (step.note or "Move") .. "|r", isComplete
end

--============================================================
-- Action: default – Fallback for unknown step types
--============================================================
GuideViewer.ActionHandlers.default = function(self, step, done)
    local isComplete = done or false
    --self:CheckAndAdvanceStep(step, isComplete)
    local color = isComplete and green or yellow
    local label = step.action and step.action:gsub("^%l", string.upper) or "Step"
    local target = step.quest or step.item or step.note or step.description or "Unknown"
    return "", "- " .. label .. ": " .. color .. target .. "|r"
end

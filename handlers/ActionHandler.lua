--============================================================
-- ActionHandler.lua – Modular action type handling
--============================================================
local UI = _G.IronPathUI
UI.ActionHandlers = {}
local HBD = LibStub("HereBeDragons-2.0")

local function DebugPrint(msg)
    if IronPath.db and IronPath.db.profile and IronPath.db.profile.debug then
        print("|cff8888ff[IronPath Debug]:|r " .. msg)
    end
end

--============================================================
-- Auto-advance utility
--============================================================
function UI:CheckAndAdvanceStep(step, isComplete)
    local wasComplete = step._wasComplete or false
    step._wasComplete = isComplete

    if not wasComplete and isComplete and IronPath.db.profile.autoAdvanceStep then
        DebugPrint("✅ CheckAndAdvanceStep triggered for completed step.")
        local visibleSteps = self:GetVisibleSteps()
        for index, visibleStep in ipairs(visibleSteps) do
            if visibleStep == step then
                DebugPrint("➡️ Advancing from step " .. index)
                self.currentStep = index + 1
                IronPath.db.profile.lastStep = self.currentStep
                C_Timer.After(0, function() self:ShowStep() end)
                return
            end
        end
        DebugPrint("|cffff0000❌ Step not found in visible step list.|r")
    else
        DebugPrint("|cffff0000⚠️ Auto-advance conditions not met.|r")
    end
end


local function GetQuestTitleByID(qid)
    for i = 1, GetNumQuestLogEntries() do
        local title, _, _, _, _, _, _, questID = GetQuestLogTitle(i)
        if questID == qid then return title end
    end
    return nil
end

local green, yellow = "|cff00ff00", "|cffffff00"

UI.ActionHandlers.collect = function(self, step, done)
    local itemProgress, color = "", yellow
    local isComplete = false
    local objectives = C_QuestLog.GetQuestObjectives(step.qid)
    if objectives then
        for _, obj in ipairs(objectives) do
            if obj.text and obj.text:find(step.item) then
                local count = obj.text:match("(%d+/%d+)")
                itemProgress = count and (" (" .. count .. ")") or ""
                if obj.finished then
                    isComplete = true
                    color = green
                end
                break
            end
        end
    end
    self:CheckAndAdvanceStep(step, isComplete)
    local quest = step.quest or step.title or "Unknown Quest"
    local killLine = step.target and ("- Kill: " .. (done and green or color) .. step.target .. "|r\n") or ""
    return
        "Complete: " .. (done and green or yellow) .. quest .. "|r",
        killLine .. "- Collect: " .. (done and green or color) .. step.item .. (done and "" or itemProgress) .. "|r"
end

UI.ActionHandlers.destroy = function(self, step, done)
    local exists = false
    for bag = 0, NUM_BAG_SLOTS do
        for slot = 1, C_Container.GetContainerNumSlots(bag) do
            local info = C_Container.GetContainerItemInfo(bag, slot)
            if info and info.itemID and C_Item.GetItemNameByID(info.itemID) == step.item then
                exists = true break
            end
        end
        if exists then break end
    end
    local isComplete = not exists
    self:CheckAndAdvanceStep(step, isComplete)
    local color = exists and yellow or green
    return "", "- Destroy: " .. color .. step.item .. "|r"
end

UI.ActionHandlers.kill = function(self, step, done)
    local countStr, color = "", yellow
    local isComplete = false
    if step.qid then
        local index = GetQuestLogIndexByID(step.qid)
        if index and index > 0 then
            for i = 1, GetNumQuestLeaderBoards(index) do
                local desc, _, finished = GetQuestLogLeaderBoard(i, index)
                if desc and desc:find(step.target or "") then
                    local match = desc:match("(%d+/%d+)")
                    if match then countStr = " (" .. match .. ")" end
                    if finished then isComplete = true color = green end
                    break
                end
            end
        end
    else
        isComplete = done or false
        color = isComplete and green or yellow
    end
    self:CheckAndAdvanceStep(step, isComplete)
    local quest = step.quest or (step.qid and GetQuestTitleByID(step.qid)) or "No Quest"
    local target = step.target or step.npc or "Target"
    return
        "Complete: " .. (done and green or yellow) .. quest .. "|r",
        "- Kill: " .. (done and green or color) .. target .. countStr .. "|r"
end

UI.ActionHandlers.accept = function(self, step, done)
    local inLog = C_QuestLog.IsOnQuest(step.qid)
    local isComplete = done or inLog
    self:CheckAndAdvanceStep(step, isComplete)
    local color = isComplete and green or yellow
    return "", "- Accept: " .. color .. (step.quest or "Unknown Quest") .. "|r"
end

UI.ActionHandlers.turnin = function(self, step, done)
    local isComplete = done or (step.qid and C_QuestLog.IsQuestFlaggedCompleted(step.qid))
    self:CheckAndAdvanceStep(step, isComplete)
    return "", "- Turn in: " .. (isComplete and green or yellow) .. (step.quest or "Unknown Quest") .. "|r"
end

UI.ActionHandlers.learn = function(self, step)
    local isComplete = step.spellID and IsSpellKnown(step.spellID)
    self:CheckAndAdvanceStep(step, isComplete)
    local color = isComplete and green or yellow
    return "", "- Learn: " .. color .. (step.spell or "Unknown Spell") .. "|r"
end

UI.ActionHandlers.grind = function(self, step, done)
    local level = UnitLevel("player")
    local isComplete = level >= step.level
    self:CheckAndAdvanceStep(step, isComplete)
    local color = isComplete and green or yellow
    return "Grind Step: ", "- Reach " .. color .. "Level " .. step.level .. "|r"
end

UI.ActionHandlers.ding = function(self, step, done)
    local level = UnitLevel("player")
    local isComplete = level >= step.level
    self:CheckAndAdvanceStep(step, isComplete)
    local xpStr = step.xp and (" (" .. step.xp .. " xp)") or ""
    return "", "- Ding: " .. (isComplete and green or yellow) .. step.level .. xpStr .. "|r"
end
UI.ActionHandlers.vendor = function(self, step, done)
    local isComplete = done or false
    self:CheckAndAdvanceStep(step, isComplete)
    return "", "- Vendor: " .. yellow .. (step.npc or "Unknown") .. "|r"
end

UI.ActionHandlers.use = function(self, step, done)
    local isComplete = done or false
    self:CheckAndAdvanceStep(step, isComplete)
    return "", "- Use: " .. yellow .. (step.item or step.spell or "Item") .. "|r"
end

UI.ActionHandlers.click = function(self, step, done)
    local isComplete = done or false
    self:CheckAndAdvanceStep(step, isComplete)
    local name = step.item or step.object or "Object"
    return "", "- Click: " .. yellow .. name .. "|r"
end

UI.ActionHandlers.complete = function(self, step, done)
    local isComplete = done or false
    self:CheckAndAdvanceStep(step, isComplete)
    return "", "- Complete: " .. yellow .. (step.spell or step.quest or "Unknown") .. "|r"
end

UI.ActionHandlers.buff = function(self, step, done)
    local isComplete = done or false
    self:CheckAndAdvanceStep(step, isComplete)
    return "", "- Buff: " .. yellow .. (step.tip or "Use /kneel") .. "|r"
end

UI.ActionHandlers.walk = function(self, step)
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

    if not step._walkTicker then
        local tickerWrapper = { nowComplete = false }
        tickerWrapper.ticker = C_Timer.NewTicker(0.25, function()
            if tickerWrapper.nowComplete then
                DebugPrint("WalkChecker: Forced complete via nowComplete flag.")
                tickerWrapper.ticker:Cancel()
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
                    complete = dist <= 2
                    tickerWrapper.nowComplete = complete
                    DebugPrint(string.format("WalkChecker Tick: %.5f (near: %s)", dist, tostring(complete)))
                end
            end
            if tickerWrapper.nowComplete and not step._wasComplete then
                DebugPrint("WalkChecker: Now complete, advancing.")
                self:CheckAndAdvanceStep(step, true)
                tickerWrapper.ticker:Cancel()
                step._walkTicker = nil
            end
        end)
        step._walkTicker = tickerWrapper
    end

    local color = isComplete and green or yellow
    return "", "- Walk: " .. color .. (step.note or "Move") .. "|r"
end

UI.ActionHandlers.default = function(self, step, done)
    local isComplete = done or false
    self:CheckAndAdvanceStep(step, isComplete)
    local color = isComplete and green or yellow
    local label = step.action and step.action:gsub("^%l", string.upper) or "Step"
    local target = step.quest or step.item or step.note or step.description or "Unknown"
    return "", "- " .. label .. ": " .. color .. target .. "|r"
end

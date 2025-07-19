-- ================================================================
-- QuestHandler.lua – Auto Accept / Auto Turnin Logic
-- ================================================================
local IronPath = _G.IronPath
local UI       = _G.IronPathUI

local function DebugPrint(msg)
    if IronPath.db and IronPath.db.profile and IronPath.db.profile.debug then
        print("|cff8888ff[IronPath Debug]:|r " .. msg)
    end
end

-- Helper: Get current visible step
local function GetCurrentStep()
    return UI:GetVisibleSteps()[UI.currentStep]
end

local function Normalize(str)
    return str and str:gsub("%s+", ""):lower() or ""
end

-- ------------------------------------------------
-- QUEST_DETAIL – Auto Accept
-- ------------------------------------------------
function IronPath:HandleQuestDetail()
    DebugPrint("QUEST_DETAIL fired.")
    if not self.db.profile.autoAccept then return end

    local step = GetCurrentStep()
    if not step then return end

    local questTitle = GetTitleText()
    DebugPrint("NPC Quest Title: " .. tostring(questTitle))
    DebugPrint("Step Title: " .. tostring(step.quest or step.title or "nil"))

    if questTitle and (questTitle == step.quest or questTitle == step.title) then
        DebugPrint("Matching quest. Accepting: " .. questTitle)
        AcceptQuest()
        print("|cff00ff00IronPath: Auto-accepted quest.|r")
    end
end

-- ------------------------------------------------
-- QUEST_COMPLETE – Auto Reward Selection
-- ------------------------------------------------
function IronPath:HandleQuestComplete()
    DebugPrint("QUEST_COMPLETE fired.")
    if not self.db.profile.autoTurnin then return end

    local step = GetCurrentStep()
    if not step then return end

    local questTitle = GetTitleText()
    DebugPrint("NPC Quest Title: " .. tostring(questTitle))
    DebugPrint("Step Title: " .. tostring(step.quest or step.title or "nil"))

    if questTitle and (questTitle == step.quest or questTitle == step.title) then
        DebugPrint("Matching quest title.")

        local numChoices = GetNumQuestChoices()
        DebugPrint("Reward choices: " .. numChoices)

        C_Timer.After(0.3, function()
            if numChoices == 0 then
                DebugPrint("No reward choices. Calling GetQuestReward(0).")
                GetQuestReward(0)
                print("|cff00ff00IronPath: Quest auto-turned in (no rewards).|r")
            elseif numChoices == 1 then
                DebugPrint("Auto-selecting single reward.")
                GetQuestReward(1)
                print("|cff00ff00IronPath: Quest reward auto-selected.|r")
            else
                print("|cffffff00IronPath: Multiple rewards, manual selection required.|r")
            end
        end)
    end
end

-- ------------------------------------------------
-- QUEST_PROGRESS – Click Continue Button
-- ------------------------------------------------
function IronPath:HandleQuestProgress()
    DebugPrint("QUEST_PROGRESS fired.")

    if not self.db.profile.autoTurnin then
        DebugPrint("Auto Turn-in disabled.")
        return
    end

    if not IsQuestCompletable() then
        DebugPrint("Quest is not completable yet.")
        return
    end

    local step = GetCurrentStep()
    if not step then
        DebugPrint("No step found.")
        return
    end

    local questTitle = GetTitleText()
    DebugPrint("NPC Quest Title: " .. tostring(questTitle))
    DebugPrint("Step Title: " .. tostring(step.quest or step.title or "nil"))

    if questTitle and (questTitle == step.quest or questTitle == step.title) then
        DebugPrint("Matching quest title. Clicking Continue.")
        CompleteQuest()
    else
        DebugPrint("Quest title does not match current step.")
    end
end

-- ------------------------------------------------
-- QUEST_LOG_UPDATE – Refresh collect steps
-- ------------------------------------------------
function IronPath:HandleQuestLogUpdate()
    DebugPrint("QUEST_LOG_UPDATE: refreshing UI.")
    UI:ShowStep()
end

-- ------------------------------------------------
-- QUEST_REMOVED – Update when quest is abandoned
-- ------------------------------------------------
function IronPath:HandleQuestRemoved(questID)
    DebugPrint("|cff00ff00QUEST_REMOVED fired|r")
end

-- ------------------------------------------------
-- QUEST_ACCEPTED – Advance if step marked complete
-- ------------------------------------------------
function IronPath:HandleQuestAccepted()
    DebugPrint("|cff00ff00QUEST_ACCEPTED fired|r")

    local step = UI:GetVisibleSteps()[UI.currentStep]
    if step and step._wasComplete then
        DebugPrint("✅ Step already marked complete. Advancing.")
        UI.currentStep = UI.currentStep + 1
        IronPath.db.profile.lastStep = UI.currentStep
        UI:ShowStep()
    end
end

-- ------------------------------------------------
-- QUEST_TURNED_IN – Advance if step marked complete
-- ------------------------------------------------
function IronPath:HandleQuestTurnedIn()
    DebugPrint("|cff00ff00QUEST_TURNED_IN fired|r")

    local step = UI:GetVisibleSteps()[UI.currentStep]
    if step and step._wasComplete then
        DebugPrint("✅ Step already marked complete. Advancing.")
        UI.currentStep = UI.currentStep + 1
        IronPath.db.profile.lastStep = UI.currentStep
        UI:ShowStep()
    end
end

-- ------------------------------------------------
-- GOSSIP_SHOW – Auto Accept / Turnin via Gossip
-- ------------------------------------------------
function IronPath:HandleGossipShow()
    DebugPrint("📜 GOSSIP_SHOW fired.")

    local step = GetCurrentStep()
    local normalizedQuest = Normalize(step.quest or "")
    local matched = false

    if step.action == "accept" then
        local quests = C_GossipInfo.GetAvailableQuests()
        DebugPrint("Available quests count: " .. tostring(#quests))

        for _, quest in ipairs(quests) do
            DebugPrint("🔍 Gossip Quest Title: [" .. quest.title .. "]")
            if Normalize(quest.title) == normalizedQuest then
                DebugPrint("✅ AUTO ACCEPT: Match found - " .. quest.title)
                C_GossipInfo.SelectAvailableQuest(quest.questID)
                DebugPrint("|cff00ff00IronPath: Gossip quest marked complete.|r")
                step._wasComplete = true
                matched = true
                break
            end
        end

    elseif step.action == "turnin" then
        local quests = C_GossipInfo.GetActiveQuests()
        DebugPrint("Active quests count: " .. tostring(#quests))

        for _, quest in ipairs(quests) do
            DebugPrint("🔍 Gossip Quest Title: [" .. quest.title .. "]")
            if Normalize(quest.title) == normalizedQuest then
                DebugPrint("✅ AUTO TURNIN: Match found - " .. quest.title)
                C_GossipInfo.SelectActiveQuest(quest.questID)
                DebugPrint("|cff00ff00IronPath: Gossip quest marked complete.|r")
                step._wasComplete = true
                matched = true
                break
            end
        end
    end

    if not matched then
        DebugPrint("|cffff0000🚫 No matching gossip quest found.|r")
    end
end


-- ------------------------------------------------
-- GREETINGS_SHOW – Auto Accept / Turnin via Gossip
-- ------------------------------------------------
function IronPath:HandleGreetingShow()
    DebugPrint("GREETINGS_SHOW fired.")
    if not self.db.profile.autoAccept then return end

    local step = GetCurrentStep()
    if not step or not step.quest or not step.action then return end

    local normalizedStepQuest = Normalize(step.quest)

    if step.action == "accept" then
        for i = 1, GetNumAvailableQuests() do
            local title = GetAvailableTitle(i)
            DebugPrint("Checking Available Quest:")
            DebugPrint("  Step Quest: [" .. step.quest .. "]")
            DebugPrint("  Greeting Quest: [" .. title .. "]")
            if Normalize(title) == normalizedStepQuest then
                DebugPrint("AUTO ACCEPT: Matching greeting quest found: " .. title)
                SelectAvailableQuest(i)
                print("|cff00ff00IronPath: Greeting quest auto-accepted.|r")
                UI:ShowStep()

                -- Retry in case more quests remain
                C_Timer.After(0.2, function()
                    if GossipFrame:IsShown() then
                        IronPath:HandleGreetingShow()
                    end
                end)
                return
            end
        end

    elseif step.action == "turnin" then
        for i = 1, GetNumActiveQuests() do
            local title, isComplete = GetActiveTitle(i)
            DebugPrint("Checking Active Quest:")
            DebugPrint("  Step Quest: [" .. step.quest .. "]")
            DebugPrint("  Greeting Quest: [" .. title .. "]")
            if Normalize(title) == normalizedStepQuest and isComplete then
                DebugPrint("AUTO TURNIN: Matching greeting turnin found: " .. title)
                SelectActiveQuest(i)
                print("|cff00ff00IronPath: Greeting quest auto-turned in.|r")
                UI:ShowStep()

                -- Retry in case more quests remain
                C_Timer.After(0.2, function()
                    if GossipFrame:IsShown() then
                        IronPath:HandleGreetingShow()
                    end
                end)
                return
            end
        end
    end

    DebugPrint("No matching greeting quest found.")
end

-- ------------------------------------------------
-- Helper – Check collect step progress
-- ------------------------------------------------
function IronPath:CheckItemPickupProgress()
    local step = GetCurrentStep()
    if not step or not step.itemName then return end

    for questIndex = 1, C_QuestLog.GetNumQuestLogEntries() do
        local questInfo = C_QuestLog.GetInfo(questIndex)
        if questInfo and not questInfo.isHeader and not questInfo.isHidden then
            local objectives = C_QuestLog.GetQuestObjectives(questInfo.questID)
            if objectives then
                for _, obj in ipairs(objectives) do
                    if obj.text and obj.text:find(step.itemName) and not obj.finished then
                        DebugPrint("Tracking item: " .. step.itemName)
                        DebugPrint("Progress: " .. obj.text)
                        return
                    end
                end
            end
        end
    end
end

-- ------------------------------------------------
-- Event Registration
-- ------------------------------------------------
IronPath:RegisterEvent("QUEST_DETAIL",       "HandleQuestDetail")
IronPath:RegisterEvent("QUEST_COMPLETE",     "HandleQuestComplete")
IronPath:RegisterEvent("QUEST_LOG_UPDATE",   "HandleQuestLogUpdate")
IronPath:RegisterEvent("QUEST_PROGRESS",     "HandleQuestProgress")
IronPath:RegisterEvent("GOSSIP_SHOW",        "HandleGossipShow")
IronPath:RegisterEvent("QUEST_ACCEPTED",     "HandleQuestAccepted")
IronPath:RegisterEvent("QUEST_TURNED_IN",    "HandleQuestTurnedIn")
IronPath:RegisterEvent("QUEST_REMOVED",      "HandleQuestRemoved")
IronPath:RegisterEvent("QUEST_GREETING",     "HandleGreetingShow")

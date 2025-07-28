local EventHandler = {}
IronPath.EventHandler = EventHandler
local GuideViewer = _G.IronPathViewer

------------------------------------------------------------
-- Quest Automation Event Frame
------------------------------------------------------------
local frame = CreateFrame("Frame")
frame:RegisterEvent("QUEST_DETAIL")
frame:RegisterEvent("QUEST_PROGRESS")
frame:RegisterEvent("QUEST_COMPLETE")
frame:RegisterEvent("GOSSIP_SHOW")
frame:RegisterEvent("QUEST_GREETING")
frame:RegisterEvent("QUEST_ACCEPT_CONFIRM")
frame:RegisterEvent("QUEST_REMOVED")
frame:RegisterEvent("QUEST_ACCEPTED")
frame:RegisterEvent("QUEST_LOG_UPDATE")
frame:RegisterEvent("LEARNED_SPELL_IN_TAB")
frame:RegisterEvent("BAG_UPDATE")
frame:RegisterEvent("CONFIRM_BINDER")
frame:RegisterEvent("MERCHANT_SHOW")
frame:RegisterEvent("TAXIMAP_OPENED")
frame:RegisterEvent("UPDATE_MOUSEOVER_UNIT")
frame:RegisterEvent("PLAYER_TARGET_CHANGED")
frame:RegisterEvent("MINIMAP_UPDATE_ZOOM")
frame:RegisterEvent("PLAYER_REGEN_ENABLED")

frame:SetScript("OnEvent", function(_, event, ...)
    local db = IronPath.db and IronPath.db.profile
    if not db then return end
    if event == "MINIMAP_UPDATE_ZOOM" then
        GuideViewer:ShowStep()
    elseif event == "PLAYER_REGEN_ENABLED" then
        GuideViewer:ShowStep()
    elseif event == "UPDATE_MOUSEOVER_UNIT" then
        local guid = UnitGUID("mouseover")
        if not guid or UnitIsPlayer("mouseover") then return end

        local unitType, _, _, _, _, npcID = strsplit("-", guid)
        npcID = tonumber(npcID)

        if unitType == "Creature" and npcID then
            local step = GuideViewer and GuideViewer.activeStep
            if step and step.objectives then
                for _, obj in ipairs(step.objectives) do
                    local npcIDs = type(obj.npcID) == "table" and obj.npcID or
                                       (obj.npcID and {obj.npcID} or nil)
                    if npcIDs then
                        for _, id in ipairs(npcIDs) do
                            if npcID == id and not UnitIsDead("mouseover") then
                                if not GetRaidTargetIndex("mouseover") then
                                    SetRaidTarget("mouseover", 1) -- Star icon
                                    IronPath:DebugPrint(
                                        "Set STAR on NPCID: " .. npcID, "arrow")
                                end
                                return
                            end
                        end
                    end
                end
            end
        end

    elseif event == "PLAYER_TARGET_CHANGED" then
        local guid = UnitGUID("target")
        if not guid or UnitIsPlayer("target") then return end

        local unitType, _, _, _, _, npcID = strsplit("-", guid)
        npcID = tonumber(npcID)

        if unitType == "Creature" and npcID then
            local step = GuideViewer and GuideViewer.activeStep
            if step and step.objectives then
                for _, obj in ipairs(step.objectives) do
                    local npcIDs = type(obj.npcID) == "table" and obj.npcID or
                                       (obj.npcID and {obj.npcID} or nil)
                    if npcIDs then
                        for _, id in ipairs(npcIDs) do
                            if npcID == id and not UnitIsDead("target") then
                                if not GetRaidTargetIndex("target") then
                                    SetRaidTarget("target", 1) -- Star
                                    IronPath:DebugPrint(
                                        "Set STAR on target NPCID: " .. npcID,
                                        "arrow")
                                end
                                return
                            end
                        end
                    end
                end
            end
        end
    elseif event == "CONFIRM_BINDER" then
        GuideViewer:ShowStep()
    elseif event == "TAXIMAP_OPENED" then
        if not IronPath.db or not IronPath.db.char then return end
        local fpaths = IronPath.db.char.fpaths or {}
        IronPath.db.char.fpaths = fpaths

        local numNodes = NumTaxiNodes()
        for i = 1, numNodes do
            local name = TaxiNodeName(i)
            if name and name ~= "" then fpaths[name] = true end
        end
        IronPath:DebugPrint("Synced flight path list from TAXIMAP_OPENED",
                            "fpath")
        GuideViewer:ShowStep()
    elseif event == "MERCHANT_SHOW" then
        -- Auto-sell grey items
        if db.autoSellGrey then
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
        if db.autoRepair and CanMerchantRepair() then
            local cost = GetRepairAllCost()
            if cost > 0 then
                RepairAllItems()
                IronPath:DebugPrint("Auto-repaired. Cost: " ..
                                        GetCoinTextureString(cost), "vendor")
            end
        end
    elseif event == "QUEST_LOG_UPDATE" then
        GuideViewer:ShowStep()

    elseif event == "BAG_UPDATE" then
        GuideViewer:ShowStep()

    elseif event == "QUEST_DETAIL" and db.autoAccept then
        IronPath:DebugPrint("Auto-accepting quest: " ..
                                (GetTitleText() or "Unknown"), "quest")
        AcceptQuest()
        GuideViewer:ShowStep()

    elseif event == "QUEST_PROGRESS" and db.autoTurnin then
        if IsQuestCompletable() then
            IronPath:DebugPrint("Auto-completing quest progress.", "quest")
            CompleteQuest()
            GuideViewer:ShowStep()
        end

    elseif event == "QUEST_COMPLETE" and db.autoTurnin then
        local choices = GetNumQuestChoices()
        if choices <= 1 then
            IronPath:DebugPrint("Auto-selecting quest reward.", "quest")
            GetQuestReward(choices == 1 and 1 or 0)
            GuideViewer:ShowStep()
        else
            IronPath:DebugPrint(
                "Multiple rewards, highlighting best vendor item.", "quest")

            local highestValue, bestIndex = 0, 1

            for i = 1, choices do
                local link = GetQuestItemLink("choice", i)
                if link then
                    local itemID = tonumber(link:match("item:(%d+)"))
                    if itemID then
                        local _, _, _, _, _, _, _, _, _, _, sellPrice =
                            GetItemInfo(itemID)
                        if sellPrice and sellPrice > highestValue then
                            highestValue = sellPrice
                            bestIndex = i
                        end
                    end
                end
            end

            local button = QuestInfoRewardsFrame.RewardButtons and
                               QuestInfoRewardsFrame.RewardButtons[bestIndex]
            if button then
                if not button.AuctioneerOverlay then
                    button.AuctioneerOverlay =
                        button:CreateTexture(nil, "OVERLAY")
                    button.AuctioneerOverlay:SetAllPoints(button.Icon)
                end
                button.AuctioneerOverlay:SetAtlas("Auctioneer")
                button.AuctioneerOverlay:Show()
            end
        end

    elseif event == "GOSSIP_SHOW" and db.autoAccept then
        local active = C_GossipInfo.GetActiveQuests()
        local available = C_GossipInfo.GetAvailableQuests()

        for _, quest in ipairs(active or {}) do
            if quest.isComplete then
                C_GossipInfo.SelectActiveQuest(quest.questID)
                IronPath:DebugPrint("Auto-turning in gossip quest: " ..
                                        quest.title, "quest")
            end
        end

        for _, quest in ipairs(available or {}) do
            C_GossipInfo.SelectAvailableQuest(quest.questID)
            IronPath:DebugPrint("Auto-accepting gossip quest: " .. quest.title,
                                "quest")
        end
        GuideViewer:ShowStep()

    elseif event == "QUEST_GREETING" and db.autoAccept then
        local numAvailable = GetNumAvailableQuests()
        for i = 1, numAvailable do SelectAvailableQuest(i) end

        local numActive = GetNumActiveQuests()
        for i = 1, numActive do
            local _, isComplete = GetActiveTitle(i)
            if isComplete then SelectActiveQuest(i) end
        end
        GuideViewer:ShowStep()

    elseif event == "QUEST_ACCEPT_CONFIRM" and db.autoAccept then
        local questID = ...
        ConfirmAcceptQuest()
        IronPath:DebugPrint("Confirmed quest accept: " .. tostring(questID),
                            "quest")
        GuideViewer:ShowStep()

    elseif event == "QUEST_ACCEPTED" then
        local _, questID = ...
        IronPath:DebugPrint("Quest accepted: " .. tostring(questID), "quest")

        local guide = IronPath_CurrentGuide
        if guide and guide.steps then
            for _, step in ipairs(guide.steps) do
                if step.objectives then
                    for _, obj in ipairs(step.objectives) do
                        if obj.type == "accept" and obj.qid == questID then
                            obj.isComplete = true
                            step._wasComplete = true
                        end
                    end
                end
            end
        end
        GuideViewer:ShowStep()

    elseif event == "QUEST_REMOVED" then
        local questID = ...
        IronPath:DebugPrint("Quest abandoned: " .. tostring(questID), "quest")

        local guide = IronPath_CurrentGuide
        if guide and guide.steps then
            for _, step in ipairs(guide.steps) do
                if step.objectives then
                    for _, obj in ipairs(step.objectives) do
                        if obj.qid == questID then
                            obj.isComplete = false
                            step._wasComplete = false
                        end
                    end
                end
            end
        end
        GuideViewer:ShowStep()

    elseif event == "LEARNED_SPELL_IN_TAB" then
        IronPath:DebugPrint("Spell or skill learned.", "learn")
        C_Timer.After(0.5, function() GuideViewer:ShowStep() end)

    elseif event == "CHAT_MSG_COMBAT_XP_GAIN" then
        IronPath:DebugPrint("XP Gained!")
        C_Timer.After(0.5, function() GuideViewer:ShowStep() end)
    end
end)

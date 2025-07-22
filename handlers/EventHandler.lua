-- ================================================================
--  EventHandler.lua – IronPath Event Watchers
-- ================================================================
--  This file handles relevant WoW game events to keep the guide UI
--  in sync with player progress. It watches for:
--    • BAG_UPDATE             – detects when items are destroyed
--    • LEARNED_SPELL_IN_TAB  – detects when the player learns a spell
--    • MERCHANT_SHOW         – detects when a vendor is opened
-- ================================================================
local GuideViewer = _G.IronPathViewer

local function DebugPrint(msg)
    if IronPath.db and IronPath.db.profile and IronPath.db.profile.debug then
        print("|cff8888ff[IronPath Debug]:|r " .. msg)
    end
end

function IronPath:HandleBagUpdate()
    local step = IronPath_CurrentGuide and IronPath_CurrentGuide.steps and GuideViewer.currentStep and IronPath_CurrentGuide.steps[GuideViewer.currentStep]
    if not step or step.action ~= "destroy" or not step.itemID then return end

    local itemStillExists = false
    for bag = 0, NUM_BAG_SLOTS do
        for slot = 1, C_Container.GetContainerNumSlots(bag) do
            local itemInfo = C_Container.GetContainerItemInfo(bag, slot)
            if itemInfo and itemInfo.itemID == step.itemID then
                itemStillExists = true
                break
            end
        end
        if itemStillExists then break end
    end

    if not itemStillExists then
        DebugPrint("Item destroyed for step: " .. tostring(step.itemID))
        GuideViewer:ShowStep()
    end
end

function IronPath:HandleSpellLearned()
    DebugPrint("Spell learned event triggered")
    C_Timer.After(0.25, function()
        GuideViewer:ShowStep()
    end)
end

function IronPath:HandleMerchantShow()
    DebugPrint("🛒 MERCHANT_SHOW fired")

    -- Auto Repair
    if IronPath.db.profile.autoRepair and CanMerchantRepair() then
        local totalCost = GetRepairAllCost()
        if totalCost > 0 then
            RepairAllItems()
            DebugPrint(string.format("🛠 Auto repaired gear for %.2fg", totalCost / 10000))
        end
    end

    -- Auto Sell Greys
    if IronPath.db.profile.autoSellGrey then
        local totalMade = 0
        for bag = 0, 4 do
            local slots = C_Container.GetContainerNumSlots(bag)
            if slots then
                for slot = 1, slots do
                    local item = C_Container.GetContainerItemInfo(bag, slot)
                    if item and item.hyperlink then
                        local _, _, itemRarity, _, _, _, _, _, _, _, itemSellPrice = GetItemInfo(item.hyperlink)
                        if itemRarity == 0 and itemSellPrice > 0 then
                            local count = item.stackCount or 1
                            totalMade = totalMade + (itemSellPrice * count)
                            C_Container.UseContainerItem(bag, slot)
                            DebugPrint(string.format("💰 Sold %s x%d", item.hyperlink, count))
                        end
                    end
                end
            end
        end
        if totalMade > 0 then
            print(string.format("|cff00ffffIronPath:|r Sold grey items for %.2fg", totalMade / 100))
        end
    end

    local step = GuideViewer:GetVisibleSteps()[GuideViewer.currentStep]
    if step and step.action == "vendor" and not step._wasComplete then
        DebugPrint("Completing vendor step.")
        GuideViewer:CheckAndAdvanceStep(step, true)
        C_Timer.After(0.25, function()
            GuideViewer:ShowStep()
        end)
    end
end

function IronPath:HandleConfirmBinder()
    DebugPrint("📍 CONFIRM_BINDER fired")

    local oldLocation = GetBindLocation()
    C_Timer.After(1, function()
        local newLocation = GetBindLocation()
        if newLocation ~= oldLocation then
            DebugPrint("✅ Hearthstone set to: " .. newLocation)
            GuideViewer:ShowStep()
        end
    end)
end

IronPath:RegisterEvent("BAG_UPDATE", "HandleBagUpdate")
IronPath:RegisterEvent("LEARNED_SPELL_IN_TAB", "HandleSpellLearned")
IronPath:RegisterEvent("MERCHANT_SHOW", "HandleMerchantShow")
IronPath:RegisterEvent("CONFIRM_BINDER", "HandleConfirmBinder")

-- ================================================================
--  EventHandler.lua – IronPath Event Watchers
-- ================================================================
--  This file handles relevant WoW game events to keep the guide UI
--  in sync with player progress. It watches for:
--
--    • BAG_UPDATE             – detects when items are destroyed (e.g., for "destroy" steps)
--    • LEARNED_SPELL_IN_TAB  – detects when the player learns a spell (e.g., for "learn" or "use" steps)
--
--  When triggered, these events cause the guide to re-evaluate and
--  refresh the current step display.
-- ================================================================

local function DebugPrint(msg)
    if IronPath.db and IronPath.db.profile and IronPath.db.profile.debug then
        print("|cff8888ff[IronPath Debug]:|r " .. msg)
    end
end

function IronPath:HandleBagUpdate()
    local step = IronPath_CurrentGuide and IronPath_CurrentGuide.steps and IronPathUI.currentStep and IronPath_CurrentGuide.steps[IronPathUI.currentStep]
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
        IronPathUI:ShowStep()
    end
end

function IronPath:HandleSpellLearned()
    DebugPrint("Spell learned event triggered")
    IronPathUI:ShowStep()
end

IronPath:RegisterEvent("BAG_UPDATE", "HandleBagUpdate")
IronPath:RegisterEvent("LEARNED_SPELL_IN_TAB", "HandleSpellLearned")

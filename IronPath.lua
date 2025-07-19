-- ================================================================
-- IronPath.lua – Ace3 Core + Initialization
-- ================================================================
-- Folder Structure:
--   IronPath/
--     features/    → Arrow.lua, MapIcon.lua
--     guides/      → (guide data files)
--     handlers/    → StepHandler.lua, QuestHandler.lua
--     Config.lua   → AceConfig options
--     IronPath.lua → this file
--     UI.lua       → guide UI frame
-- ================================================================
local IronPath = LibStub("AceAddon-3.0"):NewAddon("IronPath", "AceConsole-3.0", "AceEvent-3.0")
_G.IronPath = IronPath

-- Global guide table
IronPath_Guides = {}

-- ------------------------------------------------
-- SavedVariables Defaults
-- ------------------------------------------------
local defaults = {
    profile = {
        lastStep = 1,
        lastGuide = "",
        autoAccept = false,
        autoTurnin = false,
        autoAdvanceStep = false,
        debug = false, -- Add this line
    }
}

-- ------------------------------------------------
-- OnInitialize
-- ------------------------------------------------
function IronPath:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New("IronPath_Data", defaults, true)
end

-- ------------------------------------------------
-- OnEnable
-- ------------------------------------------------
function IronPath:OnEnable()
    self:RegisterEvent("PLAYER_ENTERING_WORLD", "OnPlayerLogin")
end

-- ------------------------------------------------
-- Register a New Guide
-- ------------------------------------------------
function IronPath:RegisterGuide(guide)
    if not guide or not guide.zone then return end
    guide.steps = guide.steps or {}
    table.insert(IronPath_Guides, guide)

    -- Optionally assign starter guide
    if guide.race == "Human" and guide.faction == "Alliance" then
        IronPath_Guides_Alliance_Human_Starter = guide
    end
end

-- ------------------------------------------------
-- PLAYER_LOGIN Handler
-- ------------------------------------------------
function IronPath:OnPlayerLogin()
    self:Print("|cffffd100IronPath loaded!|r")

    local faction = UnitFactionGroup("player")
    local race    = UnitRace("player")

    if faction == "Alliance" and race == "Human" then
        if IronPath_Guides_Alliance_Human_Starter then
            IronPath_CurrentGuide = IronPath_Guides_Alliance_Human_Starter
            IronPathUI.currentStep = self.db.profile.lastStep or 1
            self:Print(string.format("Guide loaded: %s - %s", faction, race))
        else
            self:Print("|cffff0000Human guide not found.|r")
        end
    else
        self:Print(string.format("No guide for %s %s.", faction, race))
    end

    if IronPathUI and IronPathUI.Show then
        IronPathUI:Show()
        IronPathUI:ShowStep()
    end
end

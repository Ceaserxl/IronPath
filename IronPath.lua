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
_G.IronPath         = IronPath
_G.IronPathNavBar   = NavBar
_G.IronPathViewer   = GuideViewer

-- ------------------------------------------------
-- Questie Detection Ticker (every 0.25s, max 10s)
-- ------------------------------------------------
_G.hasQuestie = false

local questieCheck = {
    elapsed = 0,
    interval = 0.25,
    maxTime = 10,
}

questieCheck.ticker = C_Timer.NewTicker(questieCheck.interval, function()
    questieCheck.elapsed = questieCheck.elapsed + questieCheck.interval

    for i = 1, GetNumAddOns() do
        local name, _, _, enabled = GetAddOnInfo(i)
        if name and name:lower():find("questie") then
            _G.hasQuestie = true
            print("|cff00ff00Questie detected via ticker:|r " .. name)
            questieCheck.ticker:Cancel()
            ------------------------------------------------------------
            -- One-time Questie module initialization
            ------------------------------------------------------------
            if _G.hasQuestie and not (_G.QuestieDB and _G.QuestieQuest) and _G.QuestieLoader then
                local db = _G.QuestieLoader:ImportModule("QuestieDB")
                local quest = _G.QuestieLoader:ImportModule("QuestieQuest")
                if db and quest then
                    _G.QuestieDB = db
                    _G.QuestieQuest = quest
                    print("|cff00ff00Questie modules initialized.|r")
                    return
                end
            end
            return
        end
    end

    if questieCheck.elapsed >= questieCheck.maxTime then
        print("|cffff0000Questie not detected after 10s.|r")
        questieCheck.ticker:Cancel()
    end
end)

function IronPath:DebugPrint(msg)
    if IronPath.db and IronPath.db.profile and IronPath.db.profile.debug then
        print("|cff8888ff[IronPath Debug]:|r " .. msg)
    end
end


-- Global guide table
IronPath_Guides = {}

-- ------------------------------------------------
-- SavedVariables Defaults
-- ------------------------------------------------
local defaults = {
    profile = {
        autoAccept = false,
        autoTurnin = false,
        autoAdvanceStep = false,
        autoSellGrey = true,
        autoRepair = true,
        debug = false,
        stepDebug = false,
        showAllSteps = false,
    },
    char = {
        lastStep = 1,
        lastGuide = "",
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
    elseif guide.race == "NightElf" and guide.faction == "Alliance" then
        IronPath_Guides_Alliance_NightElf_Starter = guide
    end
end

function IronPath:SetCurrentGuide(guide)
    if not guide or not guide.steps then return end

    IronPath_CurrentGuide = guide

    -- Only reset to step 1 if changing to a different guide
    if IronPath.db and IronPath.db.char then
        if IronPath.db.char.lastGuide ~= (guide.easyName or guide.zone) then
            IronPath.db.char.lastStep = 1
            IronPathViewer.currentStep = 1
            IronPath.db.char.lastGuide = guide.easyName or guide.zone
        else
            IronPathViewer.currentStep = IronPath.db.char.lastStep or 1
        end
    end

    if IronPathViewer and IronPathViewer.ShowStep then
        --IronPathViewer:ShowStep()
    end

    self:Print(string.format("|cff00ff00Guide loaded:|r %s", guide.easyName or guide.zone))
end


-- ------------------------------------------------
-- PLAYER_LOGIN Handler
-- ------------------------------------------------
function IronPath:OnPlayerLogin()
    self:Print("|cffffd100IronPath loaded!|r")

    local lastGuideName = self.db.char.lastGuide
    if lastGuideName and lastGuideName ~= "" then
        for _, guide in ipairs(IronPath_Guides) do
            local label = guide.easyName or guide.zone
            if label == lastGuideName then
                self:SetCurrentGuide(guide)
                if IronPathUI and IronPathUI.Show then IronPathUI:Show() end
                return
            end
        end
        self:Print("|cffff0000Last selected guide not found:|r " .. lastGuideName)
    end

    -- Fallback to default guide by race/faction
    local faction = UnitFactionGroup("player")
    local race    = UnitRace("player")

    local guide = nil
    if faction == "Alliance" and race == "Human" then
        guide = IronPath_Guides_Alliance_Human_Starter
    elseif faction == "Alliance" and race == "NightElf" then
        guide = IronPath_Guides_Alliance_NightElf_Starter
    end

    if guide then
        self:SetCurrentGuide(guide)
    else
        self:Print(string.format("No guide for %s %s.", faction, race))
    end

    if IronPathUI and IronPathUI.Show then
        IronPathUI:Show()
    end
end


function IronPath:SwitchGuideByName(name)
    for _, guide in ipairs(IronPath_Guides) do
        if guide.easyName == name or guide.zone == name then
            self:SetCurrentGuide(guide)
            return
        end
    end
    self:Print("|cffff0000Guide not found:|r " .. name)
end


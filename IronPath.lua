-- ================================================================
-- IronPath.lua – Ace3 Core + Initialization
-- ================================================================
local IronPath = LibStub("AceAddon-3.0"):NewAddon("IronPath", "AceConsole-3.0",
                                                  "AceEvent-3.0")
_G.IronPath = IronPath

-- Global guide registry
IronPath_Guides = {}

-- Categorized debug printing
function IronPath:DebugPrint(msg, category)
    if not (self.db and self.db.profile and self.db.profile.debug) then
        return
    end

    local color = {
        info = "|cff8888ff", -- Blue
        warn = "|cffffff00", -- Yellow
        error = "|cffff4444", -- Red
        success = "|cff33ff33", -- Bright Green
        guide = "|cffffdd55", -- Orange-Yellow (changed from green)
        event = "|cff55ffff", -- Cyan
        parse = "|cffffaaff" -- Magenta
    }

    category = category or "info"
    local prefixColor = color[category] or "|cffffffff"
    local label = string.upper(category)

    print(prefixColor .. "[IronPath " .. label .. "]:|r " .. msg)
end

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
        showAllSteps = false
    },
    char = {lastStep = 1, lastGuide = ""}
}

-- ------------------------------------------------
-- OnInitialize
-- ------------------------------------------------
function IronPath:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New("IronPath_Data", defaults, true)
    self:DebugPrint("IronPath Initialized!", "success")
end

-- ------------------------------------------------
-- Register a New Guide
-- ------------------------------------------------
function IronPath:RegisterGuide(guide)
    if not self._pendingGuides then self._pendingGuides = {} end
    table.insert(self._pendingGuides, guide)
end

function IronPath:ReRegisterGuide(guide)
    if not guide then
        self:DebugPrint("Attempted to register invalid guide.", "error")
        return
    end

    guide.steps = guide.steps or {}
    table.insert(IronPath_Guides, guide)

    -- Assign starter fallback by race/faction
    if guide.faction == "Alliance" and guide.race == "Human" then
        IronPath_Guides_Alliance_Human_Starter = guide
    elseif guide.faction == "Alliance" and guide.race == "NightElf" then
        IronPath_Guides_Alliance_NightElf_Starter = guide
    end

    local name = guide.easyName or guide.zone or "Unnamed"
    self:DebugPrint("Registered guide: " .. name, "guide")
end

-- ------------------------------------------------
-- OnEnable
-- ------------------------------------------------
function IronPath:OnEnable()
    self:DebugPrint("IronPath enabled. DB is ready.", "success")
    self:RegisterEvent("PLAYER_ENTERING_WORLD", "OnPlayerLogin")

    if self._pendingGuides then
        for _, g in ipairs(self._pendingGuides) do
            self:ReRegisterGuide(g)
        end
        self._pendingGuides = nil
    end
end

-- ------------------------------------------------
-- Set Current Guide (without parsing)
-- ------------------------------------------------
function IronPath:SetCurrentGuide(guide)
    if not guide or not guide.steps then
        self:DebugPrint("Invalid guide passed to SetCurrentGuide.", "error")
        return
    end

    IronPath_CurrentGuide = guide
    self:DebugPrint("Set guide: " .. (guide.easyName or "Unnamed"), "guide")

    -- Parse steps if not already parsed
    if type(guide.steps[1]) == "string" then
        local parsed = IronPath.Parser:ParseSteps(guide.steps[1])
        if parsed and #parsed > 0 then
            guide.steps = parsed
            self:DebugPrint("Guide steps parsed successfully (" .. #parsed ..
                                " steps).", "parse")
        else
            self:DebugPrint("Failed to parse guide steps.", "error")
            return
        end
    end

    -- Set current step index
    local db = self.db and self.db.char
    if db then
        if db.lastGuide ~= (guide.easyName or "Unnamed") then
            db.lastStep = 1
            IronPathViewer.currentStep = 1
            db.lastGuide = guide.easyName or "Unnamed"
        else
            IronPathViewer.currentStep = db.lastStep or 1
        end
    end

    -- Show the step in the viewer
    if IronPathViewer and IronPathViewer.ShowStep then
        IronPathViewer:ShowStep()
    end
end

-- ------------------------------------------------
-- Load Last or Default Guide
-- ------------------------------------------------
function IronPath:OnPlayerLogin()
    self:DebugPrint("IronPath OnPlayerLogin!", "event")

    local lastGuideName = self.db.char.lastGuide
    local foundGuide = nil

    -- Try to load previously selected guide
    if lastGuideName ~= "" then
        for _, guide in ipairs(IronPath_Guides) do
            if guide.easyName == lastGuideName or guide.zone == lastGuideName then
                foundGuide = guide
                break
            end
        end
        if not foundGuide then
            self:DebugPrint("Last selected guide not found: " .. lastGuideName,
                            "warn")
        end
    end

    -- Fallback to race/faction starter
    if not foundGuide then
        local faction = UnitFactionGroup("player")
        local race = UnitRace("player")
        if faction == "Alliance" and race == "Human" then
            foundGuide = IronPath_Guides_Alliance_Human_Starter
        elseif faction == "Alliance" and race == "NightElf" then
            foundGuide = IronPath_Guides_Alliance_NightElf_Starter
        end
    end

    if foundGuide then
        self:SetCurrentGuide(foundGuide)
    else
        self:DebugPrint("No suitable guide found for your character.", "error")
    end

    if IronPathUI and IronPathUI.Show then IronPathUI:Show() end
end

-- ------------------------------------------------
-- Manual Switch by Name
-- ------------------------------------------------
function IronPath:SwitchGuideByName(name)
    for _, guide in ipairs(IronPath_Guides) do
        if guide.easyName == name or guide.zone == name then
            self:SetCurrentGuide(guide)
            return
        end
    end
    self:DebugPrint("Guide not found: " .. name, "error")
end

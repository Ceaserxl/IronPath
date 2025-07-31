-- ================================================================
-- IronPath.lua – Combined Core Logic with GuideLoader
-- ================================================================
-- 1. Define and register addon core
local IronPath = LibStub("AceAddon-3.0"):NewAddon("IronPath", "AceConsole-3.0", "AceEvent-3.0")
_G.IronPath = IronPath
_G.IronPath.GuideLoader = {} -- reserved for external use
local GuideLoader = _G.IronPath.GuideLoader
local GuideViewer = _G.IronPathViewer

-- 2. Global guide registry
IronPath_Guides = {}

-- 3. SavedVariables defaults
local defaults = {
    profile = {
        minimap = {
            hide = false,
            minimapPos = 220 -- default angle position
        },
        autoAccept = true,
        autoTurnin = true,
        autoAdvanceStep = true,
        autoSellGrey = true,
        autoRepair = true,
        debug = false,
        stepDebug = false,
        showAllSteps = false
    },
    char = { lastStep = 1, lastGuide = "" }
}

-- 4. Printers
function IronPath:DebugPrint(msg, category)
    if not (self.db and self.db.profile and self.db.profile.debug) then
        return
    end
    local color = {
        info = "|cff8888ff",
        warn = "|cffffff00",
        error = "|cffff4444",
        success = "|cff33ff33",
        guide = "|cffffdd55",
        event = "|cff55ffff",
        parse = "|cffffaaff"
    }
    local prefixColor = color[category or "info"] or "|cffffffff"
    print(prefixColor .. "[IronPath " .. string.upper(category or "info") ..
        "]:|r " .. msg)
end

function IronPath:Print(msg, category)
    local color = {
        info = "|cff8888ff",
        warn = "|cffffff00",
        error = "|cffff4444",
        success = "|cff33ff33",
        guide = "|cffffdd55",
        event = "|cff55ffff",
        parse = "|cffffaaff"
    }
    local prefixColor = color[category or "info"] or "|cffffffff"
    print(prefixColor .. "[IronPath " .. string.upper(category or "info") ..
        "]:|r " .. msg)
end

-- 5. Called first during addon load
function IronPath:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New("IronPath_Data", defaults, true)
    self:DebugPrint("IronPath Initialized!", "success")
end

-- 6. Queued guide registration before DB is ready
function IronPath:RegisterGuide(guide)
    self._pendingGuides = self._pendingGuides or {}
    table.insert(self._pendingGuides, guide)
end

-- 7. Registers guide into global registry
function IronPath:ReRegisterGuide(guide)
    if not guide then
        return self:DebugPrint("Attempted to register invalid guide.", "error")
    end
    guide.steps = guide.steps or {}
    table.insert(IronPath_Guides, guide)

    -- Set default fallback
    if guide.faction == "Alliance" and guide.race == "Human" then
        IronPath_Guides_Alliance_Human_Starter = guide
    elseif guide.faction == "Alliance" and guide.race == "NightElf" then
        IronPath_Guides_Alliance_NightElf_Starter = guide
    end

    self:DebugPrint("Registered guide: " .. (guide.easyName or "Unnamed"), "guide")
end

-- 8. Called when player enters world
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

-- 9. Called after PLAYER_ENTERING_WORLD fires
function IronPath:OnPlayerLogin()
    self:DebugPrint("IronPath OnPlayerLogin!", "event")
    local lastGuideName = self.db.char.lastGuide
    local foundGuide = nil

    for _, guide in ipairs(IronPath_Guides) do
        if guide.easyName == lastGuideName then
            foundGuide = guide
            break
        end
    end

    if not foundGuide then
        local faction, race = UnitFactionGroup("player"), UnitRace("player")
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

-- 10. Switch guides manually by name
function IronPath:SwitchGuideByName(name)
    for _, guide in ipairs(IronPath_Guides) do
        if guide.easyName == name then return self:SetCurrentGuide(guide) end
    end
    self:DebugPrint("Guide not found: " .. name, "error")
end

-- 11. Sets and parses the current guide
function IronPath:SetCurrentGuide(guide)
    if not guide or not guide.steps then
        return self:DebugPrint("Invalid guide passed to SetCurrentGuide.",
            "error")
    end

    IronPath_CurrentGuide = guide
    self:DebugPrint("Set guide: " .. (guide.easyName or "Unnamed"), "guide")

    if type(guide.steps[1]) == "string" then
        local parsed, raw = IronPath.Parser:ParseSteps(guide.steps[1])
        if parsed and #parsed > 0 then
            guide.steps = parsed
            guide.rawSteps = raw
            self:DebugPrint("Guide steps parsed successfully (" .. #parsed ..
                " steps).", "parse")
        else
            return self:DebugPrint("Failed to parse guide steps.", "error")
        end
    end

    local db = self.db
    if db then
        db.char.lastGuide = guide.easyName
        IronPathViewer.currentStep = db.char.lastStep or 1
    end


    -- Cache visible steps
    if IronPathViewer and IronPathViewer.GetVisibleSteps then
        IronPathViewer:GetVisibleSteps(guide)
    end

    -- Show current step
    if IronPathViewer and IronPathViewer.ShowStep then
        IronPathViewer:ShowStep()
    end
end

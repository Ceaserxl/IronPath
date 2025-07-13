-- ================================================================
-- IronPath.lua
-- Main Addon Core - Human Alliance Hardcore 1-60 Leveling
-- ================================================================

-- ------------------------------------------------
-- INIT + GUIDE LOADING
-- ------------------------------------------------
local initFrame = CreateFrame("Frame")
initFrame:RegisterEvent("PLAYER_LOGIN")
initFrame:SetScript("OnEvent", function()
    print("|cffffd100IronPath loaded!|r")
    IronPath_Data = IronPath_Data or {}

    local faction = UnitFactionGroup("player")
    local race = UnitRace("player")

    if faction == "Alliance" and race == "Human" then
        if IronPath_Guides_Alliance_Human_Starter then
            IronPath_CurrentGuide = IronPath_Guides_Alliance_Human_Starter
            local savedStep = IronPath_Data.lastStep or 1
            IronPath_CurrentStep = savedStep
            print("|cffffd100Guide loaded: "..IronPath_CurrentGuide.zone.." "..IronPath_CurrentGuide.levelRange.."|r")
        else
            print("|cffff0000IronPath: Human guide not found.|r")
        end
    else
        print("|cffff0000IronPath: no guide for "..faction.." "..race..".|r")
    end
end)

-- ------------------------------------------------
-- SLASH COMMAND
-- ------------------------------------------------
SLASH_IRONPATH1 = "/ironpath"
SlashCmdList["IRONPATH"] = function()
    if IronPathUI and IronPathUI:IsShown() then
        IronPathUI:Hide()
    elseif IronPathUI and IronPathUI.Show then
        IronPathUI:Show()
        IronPathUI:ShowStep()
    end
end

-- ------------------------------------------------
-- FINAL LOADER
-- ------------------------------------------------
local loader = CreateFrame("Frame")
loader:RegisterEvent("PLAYER_LOGIN")
loader:SetScript("OnEvent", function()
    if IronPathUI and IronPathUI.Show then
        IronPathUI:Show()
        IronPathUI:ShowStep()
    end
end)

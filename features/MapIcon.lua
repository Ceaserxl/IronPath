-- ================================================================
-- IronPath_MapIcon.lua – Minimap Icon (LibDataBroker)
-- ================================================================
local IronPath = _G.IronPath
local LDB = LibStub("LibDataBroker-1.1")
local DBI = LibStub("LibDBIcon-1.0")

-- Create the LDB data object with a fallback icon
local dataObj = LDB:NewDataObject("IronPath", {
    type = "data source",
    text = "IronPath",
    icon = "Interface\\Icons\\INV_Misc_Map_01", -- Required dummy
    OnClick = function(_, button)
        if button == "RightButton" then
            if Settings and Settings.OpenToCategory then
                Settings.OpenToCategory("IronPath")
            end
        else
            if IronPathUI and IronPathUI:IsShown() then
                IronPathUI:Hide()
                if arrowFrame then arrowFrame:Hide() end
            elseif IronPathUI then
                IronPathUI:Show()
                if arrowFrame then arrowFrame:Show() end
            end
        end
    end,
    OnTooltipShow = function(tt)
        tt:AddLine("IronPath")
        tt:AddLine("Left-click to toggle the guide window.", 1, 1, 1)
        tt:AddLine("Right-click to open settings.", 1, 1, 1)
    end
})

-- Apply the atlas icon to the button after it's created
local function ApplyAtlas()
    local button = DBI:GetMinimapButton("IronPath")
    if button and button.icon and button.icon.SetAtlas then
        button.icon:SetAtlas("nameplates-InterruptShield")
    end
end

-- Register icon after DB is available
if IronPath.db and IronPath.db.profile then
    DBI:Register("IronPath", dataObj, IronPath.db.profile.minimap)
    ApplyAtlas()
else
    local f = CreateFrame("Frame")
    f:RegisterEvent("ADDON_LOADED")
    f:SetScript("OnEvent", function(_, _, addonName)
        if addonName == "IronPath" and IronPath.db and IronPath.db.profile then
            DBI:Register("IronPath", dataObj, IronPath.db.profile.minimap)
            ApplyAtlas()
            f:UnregisterAllEvents()
        end
    end)
end

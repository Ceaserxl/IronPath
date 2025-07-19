-- ================================================================
-- IronPath_MapIcon.lua – Minimap Icon (LibDataBroker)
-- ================================================================

local IronPath = _G.IronPath
local LDB = LibStub("LibDataBroker-1.1")
local DBI = LibStub("LibDBIcon-1.0")

local dataObj = LDB:NewDataObject("IronPath", {
    type = "data source",
    text = "IronPath",
    icon = "Interface\\Icons\\INV_Misc_Map_01",

    OnClick = function(_, button)
        if button == "RightButton" then
            if Settings and Settings.OpenToCategory then
                Settings.OpenToCategory("IronPath")
            end
        else
            if IronPathFrame:IsShown() then
                IronPathFrame:Hide()
            else
                IronPathFrame:Show()
            end
        end
    end,

    OnTooltipShow = function(tt)
        tt:AddLine("IronPath")
        tt:AddLine("Left-click to toggle the guide window.", 1, 1, 1)
        tt:AddLine("Right-click to open settings.", 1, 1, 1)
    end,
})

if IronPath.db and IronPath.db.profile then
    DBI:Register("IronPath", dataObj, IronPath.db.profile.minimap)
else
    -- Fallback: delay registration until db is ready
    local f = CreateFrame("Frame")
    f:RegisterEvent("ADDON_LOADED")
    f:SetScript("OnEvent", function(_, _, addonName)
        if addonName == "IronPath" and IronPath.db and IronPath.db.profile then
            DBI:Register("IronPath", dataObj, IronPath.db.profile.minimap)
            f:UnregisterAllEvents()
        end
    end)
end

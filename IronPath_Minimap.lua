-- IronPath_Minimap.lua

local ldb = LibStub:GetLibrary("LibDataBroker-1.1")
local minimapIcon = LibStub("LibDBIcon-1.0")

local IronPathLDB = ldb:NewDataObject("IronPath", {
    type = "data source",
    text = "IronPath",
    icon = "Interface\\Icons\\INV_Misc_Map_01",  -- change icon if you want
    OnClick = function(self, button)
        if IronPathFrame:IsShown() then
            IronPathFrame:Hide()
        else
            IronPathFrame:Show()
        end
    end,
    OnTooltipShow = function(tooltip)
        tooltip:AddLine("IronPath")
        tooltip:AddLine("Click to toggle the guide window.", 1, 1, 1)
    end,
})

IronPathDB = IronPathDB or { minimap = { hide = false } }
minimapIcon:Register("IronPath", IronPathLDB, IronPathDB.minimap)

-- ================================================================
-- ArrowFrame.lua – Standalone Arrow UI Creator
-- ================================================================
local IronPath = _G.IronPath
local addonName = "IronPath"

local arrowFrame

function IronPath:CreateArrowFrame()
    if arrowFrame then return end

    arrowFrame = CreateFrame("Frame", addonName .. "_ArrowFrame", IronPathNavBar)
    arrowFrame:SetSize(110, 110)
    arrowFrame:SetPoint("BOTTOM", IronPathNavBar, "TOP", 0, -20)
    arrowFrame:Hide()

    -- Glow Ring (blur effect underneath)
    local glow = arrowFrame:CreateTexture(nil, "BACKGROUND", nil, 0)
    glow:SetAtlas("ShipMission-RedGlowRing")
    glow:SetSize(79, 79)
    glow:SetPoint("CENTER")
    glow:SetAlpha(1) -- optional: soften the glow

    -- Main Border on top
    local bg = arrowFrame:CreateTexture(nil, "BACKGROUND", nil, 0)
    bg:SetAtlas("auctionhouse-itemicon-border-blue")
    bg:SetSize(76, 76)
    bg:SetPoint("CENTER")


    local ribbon = arrowFrame:CreateTexture(nil, "ARTWORK")
    ribbon:SetAtlas("Garr_ListButton-Highlight")
    ribbon:SetSize(100, 24)
    ribbon:SetPoint("BOTTOM", IronPathNavBar, "TOP", 0, -12)

    local arrow = arrowFrame:CreateTexture(nil, "BACKGROUND")
    arrow:SetTexture("Interface\\WorldMap\\WorldMapArrow")
    arrow:SetSize(35, 35)
    arrow:SetPoint("CENTER")

    local distanceText = arrowFrame:CreateFontString(nil, "OVERLAY")
    distanceText:SetFont("Fonts\\2002.TTF", 14, "")
    distanceText:SetPoint("CENTER", ribbon, "CENTER", 0, 0)
    distanceText:SetTextColor(1, 0.82, 0)
    distanceText:SetText("")

    arrowFrame.arrow = arrow
    arrowFrame.distanceText = distanceText
    arrowFrame.orientation = 0
    arrowFrame.forceUpdate = true

    IronPath.arrowFrame = arrowFrame
    IronPath:DebugPrint("Arrow frame created", "arrow")
end

-- ================================================================
-- ArrowFrame.lua – Standalone Arrow UI Creator
-- ================================================================
local IronPath = _G.IronPath
local addonName = "IronPath"

local arrowFrame

function IronPath:CreateArrowFrame()
    if arrowFrame then return end

    arrowFrame =
        CreateFrame("Frame", addonName .. "_ArrowFrame", IronPathNavBar)
    arrowFrame:SetSize(90, 90)
    arrowFrame:SetPoint("BOTTOM", IronPathNavBar, "TOP", 0, 0)
    arrowFrame:SetAlpha(1)
    arrowFrame:Hide()

    local bg = arrowFrame:CreateTexture(nil, "BACKGROUND")
    bg:SetAtlas("NavalMap-SmallBonusCircle")
    bg:SetSize(64, 64)
    bg:SetPoint("CENTER")

    local arrow = arrowFrame:CreateTexture(nil, "ARTWORK")
    arrow:SetTexture("Interface\\WorldMap\\WorldMapArrow")
    arrow:SetSize(40, 40)
    arrow:SetPoint("CENTER")

    local ribbon = arrowFrame:CreateTexture(nil, "BACKGROUND")
    ribbon:SetAtlas("UI-Frame-Neutral-Ribbon", true)
    ribbon:SetSize(128, 32)
    ribbon:SetPoint("TOP", arrowFrame, "BOTTOM", 0, 20)

    local distanceText = arrowFrame:CreateFontString(nil, "OVERLAY")
    distanceText:SetFont("Fonts\\2002.TTF", 14, "")
    distanceText:SetPoint("CENTER", ribbon, "CENTER", 0, 2)
    distanceText:SetTextColor(0, 0, 0)
    distanceText:SetText("")

    arrowFrame.arrow = arrow
    arrowFrame.distanceText = distanceText
    arrowFrame.orientation = 0
    arrowFrame.forceUpdate = true

    IronPath.arrowFrame = arrowFrame
    IronPath:DebugPrint("Arrow frame created", "arrow")
end

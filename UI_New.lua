local frameWidth = 320
local heightTop = 72
local heightMid = 160
local heightBot = 70

local f = CreateFrame("Frame", "IronPathMainUI", UIParent)
f:SetSize(frameWidth, heightTop + heightMid + heightBot)
f:SetPoint("CENTER")
f:SetMovable(true)
f:EnableMouse(true)
f:RegisterForDrag("LeftButton")
f:SetScript("OnDragStart", f.StartMoving)
f:SetScript("OnDragStop", f.StopMovingOrSizing)

-- Top: Navigation
local topTex = f:CreateTexture(nil, "BORDER")
topTex:SetSize(frameWidth, heightTop)
topTex:SetPoint("TOP", f, "TOP")
topTex:SetAtlas("Legion-boostpopup-top", false)

local topFrame = CreateFrame("Frame", nil, f)
topFrame:SetSize(frameWidth, heightTop)
topFrame:SetPoint("TOP", f, "TOP")

-- Middle: Guide Viewer
local middleTex = f:CreateTexture(nil, "BACKGROUND")
middleTex:SetSize(frameWidth, heightMid)
middleTex:SetPoint("TOP", topTex, "BOTTOM")
middleTex:SetAtlas("Legion-boostpopup-middle", false)

local midFrame = CreateFrame("Frame", nil, f)
midFrame:SetSize(frameWidth, heightMid)
midFrame:SetPoint("TOP", topTex, "BOTTOM")

-- Bottom: Footer
local bottomTex = f:CreateTexture(nil, "BORDER")
bottomTex:SetSize(frameWidth, heightBot)
bottomTex:SetPoint("TOP", middleTex, "BOTTOM")
bottomTex:SetAtlas("Legion-boostpopup-bottom", false)

local bottomFrame = CreateFrame("Frame", nil, f)
bottomFrame:SetSize(frameWidth, heightBot)
bottomFrame:SetPoint("TOP", middleTex, "BOTTOM")

-- Labels (for demo)
local navLabel =
    topFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
navLabel:SetPoint("CENTER")
navLabel:SetText("NAVIGATION")

local midLabel = midFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
midLabel:SetPoint("CENTER")
midLabel:SetText("GUIDE VIEWER")

local botLabel = bottomFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
botLabel:SetPoint("CENTER")
botLabel:SetText("FOOTER")

f:Show()

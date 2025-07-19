-- ================================================================
-- IronPath_UI.lua – Frame & widgets
-- ================================================================
local IronPath = _G.IronPath

------------------------------------------------
-- Frame shell
------------------------------------------------
local UI = CreateFrame("Frame","IronPathFrame",UIParent,"BackdropTemplate")
_G.IronPathUI = UI

UI:SetSize(280,250)  UI:SetPoint("CENTER")
UI:SetMovable(true)  UI:EnableMouse(true)  UI:SetClampedToScreen(true)
UI:SetBackdrop({
  bgFile   = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",
  edgeFile = "Interface\\Buttons\\WHITE8x8",
  edgeSize = 2, insets = {left=2,right=2,top=2,bottom=2},
})
UI:SetBackdropBorderColor(0,0.8,1,1)
UI:SetBackdropColor(0.08,0.08,0.08,0.95)
UI:SetScript("OnMouseDown",UI.StartMoving)
UI:SetScript("OnMouseUp",  UI.StopMovingOrSizing)

-- Title / nav / body text
UI.title      = UI:CreateFontString(nil,"OVERLAY","GameFontNormalLarge")
UI.navInfo    = UI:CreateFontString(nil,"OVERLAY","GameFontHighlight")
UI.guideTitle = UI:CreateFontString(nil,"OVERLAY","GameFontHighlight")
UI.stepText   = UI:CreateFontString(nil,"OVERLAY","GameFontWhite")

UI.title  :SetPoint("TOP", 0,-10)       UI.title:SetText("|cff00ffffIronPath Guide|r")
UI.navInfo:SetPoint("TOP", 0,-32)
UI.guideTitle:SetPoint("TOP", 0, -47)   UI.guideTitle:SetText("|cffffff00(Guide Title)|r")
UI.stepText:SetPoint("TOPLEFT",15,-60)  UI.stepText:SetWidth(250)
UI.stepText:SetJustifyH("LEFT")         UI.stepText:SetJustifyV("TOP")

-- Buttons
UI.nextBtn = CreateFrame("Button",nil,UI,"UIPanelButtonTemplate")
UI.prevBtn = CreateFrame("Button",nil,UI,"UIPanelButtonTemplate")
UI.nextBtn:SetSize(60,20)  UI.prevBtn:SetSize(60,20)
UI.nextBtn:SetPoint("BOTTOMRIGHT",-10,10)  UI.prevBtn:SetPoint("BOTTOMLEFT",10,10)
UI.nextBtn:SetText("Next")  UI.prevBtn:SetText("Prev")

-- Small pulse animation (re‑used by StepHandler)
local glow = UI:CreateAnimationGroup()  glow:SetLooping("NONE")
local o = glow:CreateAnimation("Alpha") o:SetFromAlpha(1) o:SetToAlpha(0.7) o:SetDuration(0.3) o:SetOrder(1)
local i = glow:CreateAnimation("Alpha") i:SetFromAlpha(0.7) i:SetToAlpha(1)  i:SetDuration(0.3) i:SetOrder(2)
function UI:Pulse() if glow:IsPlaying() then glow:Stop() end glow:Play() end

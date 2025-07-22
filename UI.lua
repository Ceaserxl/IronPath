--============================================================--
-- IronPath_UI.lua – Brushed Cobalt Layout (NavBar Primary)
--============================================================--
local IronPath = _G.IronPath

------------------------------------------------------------
-- Globals
------------------------------------------------------------
local GlobalWidth = 330
local Padding = 10

------------------------------------------------------------
-- NavBar – Main Frame
------------------------------------------------------------
local NavBar = CreateFrame("Frame", "IronPathNavBar", UIParent, "BackdropTemplate")
_G.IronPathUI = NavBar

NavBar:SetSize(GlobalWidth, 28)
NavBar:SetPoint("CENTER")
NavBar:SetMovable(true)
NavBar:EnableMouse(true)
NavBar:SetClampedToScreen(true)
NavBar:SetScript("OnMouseDown", NavBar.StartMoving)
NavBar:SetScript("OnMouseUp", NavBar.StopMovingOrSizing)
NavBar:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8" })
NavBar:SetBackdropColor(0.05, 0.08, 0.16, 0.95)
NavBar:SetBackdropBorderColor(0.10, 0.14, 0.22, 1.0)

-- Title
NavBar.title = NavBar:CreateFontString(nil, "OVERLAY", "GameFontNormal")
NavBar.title:SetPoint("LEFT", Padding, 0)
NavBar.title:SetText("|cff00ccffIronPath |cffffcc00Classic|r")

-- Step Info
NavBar.stepInfo = NavBar:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
NavBar.stepInfo:SetPoint("LEFT", NavBar.title, "RIGHT", 12, 0)
NavBar.stepInfo:SetText("Step 1 of 246")

-- Navigation Buttons
NavBar.prevBtn = CreateFrame("Button", nil, NavBar, "UIPanelButtonTemplate")
NavBar.prevBtn:SetSize(50, 20)
NavBar.prevBtn:SetPoint("RIGHT", NavBar, "RIGHT", -62, 0)
NavBar.prevBtn:SetText("Prev")

NavBar.nextBtn = CreateFrame("Button", nil, NavBar, "UIPanelButtonTemplate")
NavBar.nextBtn:SetSize(50, 20)
NavBar.nextBtn:SetPoint("RIGHT", NavBar, "RIGHT", -6, 0)
NavBar.nextBtn:SetText("Next")

------------------------------------------------------------
-- GuideViewer – Attached Below NavBar
------------------------------------------------------------
local GuideViewer = CreateFrame("Frame", "IronPathViewer", NavBar, "BackdropTemplate")
_G.IronPathViewer = GuideViewer

GuideViewer:SetSize(GlobalWidth, 360)
GuideViewer:SetPoint("TOP", NavBar, "BOTTOM", 0, 0)
GuideViewer:SetBackdrop({
  bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
  edgeFile = "Interface\\Buttons\\WHITE8x8",
  edgeSize = 3,
  insets = { left = 2, right = 2, top = 2, bottom = 2 },
})
GuideViewer:SetBackdropColor(0.15, 0.15, 0.15, 0.75)
GuideViewer:SetBackdropBorderColor(0.10, 0.10, 0.10, 1.0)

------------------------------------------------------------
-- GuideViewer Contents
------------------------------------------------------------
-- Zone Info
GuideViewer.zoneLabel = GuideViewer:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
GuideViewer.zoneLabel:SetPoint("TOPLEFT", Padding, -10)
GuideViewer.zoneLabel:SetText("|A:Dungeon:16:16|a Zone: Elwynn Forest")

-- Divider 1
GuideViewer.line1 = GuideViewer:CreateTexture(nil, "ARTWORK")
GuideViewer.line1:SetPoint("TOPLEFT", GuideViewer.zoneLabel, "BOTTOMLEFT", 0, -6)
GuideViewer.line1:SetPoint("RIGHT", -Padding, 0)
GuideViewer.line1:SetHeight(1.5)
GuideViewer.line1:SetColorTexture(0.6, 0.6, 0.9, 0.8)

-- Objectives
GuideViewer.objectivesLabel = GuideViewer:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
GuideViewer.objectivesLabel:SetPoint("TOPLEFT", GuideViewer.line1, "BOTTOMLEFT", 0, -8)
GuideViewer.objectivesLabel:SetText("|A:None:16:16:0:-1|a Objectives: Kill")

-- Go To Label
GuideViewer.goToLabel = GuideViewer:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
GuideViewer.goToLabel:SetPoint("TOPLEFT", GuideViewer.objectivesLabel, "BOTTOMLEFT", 20, -4)
GuideViewer.goToLabel:SetText("|A:poi-door-arrow-up:16:16:0:0|a Go To: Goldshire")

-- Talk To Label
GuideViewer.talkToLabel = GuideViewer:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
GuideViewer.talkToLabel:SetPoint("TOPLEFT", GuideViewer.goToLabel, "BOTTOMLEFT", 0, -4)
GuideViewer.talkToLabel:SetText("|A:None:16:16:0:-1|a Talk To: Marshal Dughan")

-- Quest To Complete Label
GuideViewer.questToCompleteLabel = GuideViewer:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
GuideViewer.questToCompleteLabel:SetPoint("TOPLEFT", GuideViewer.talkToLabel, "BOTTOMLEFT", 0, -4)
GuideViewer.questToCompleteLabel:SetText("") -- default blank

-- Step Objective
GuideViewer.stepObjective = GuideViewer:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
GuideViewer.stepObjective:SetPoint("TOPLEFT", GuideViewer.questToCompleteLabel, "BOTTOMLEFT", -20, -4)
GuideViewer.stepObjective:SetWidth(250)
GuideViewer.stepObjective:SetJustifyH("LEFT")
GuideViewer.stepObjective:SetText("- Kill X\n- Collect Y")

-- Divider 2
GuideViewer.line2 = GuideViewer:CreateTexture(nil, "ARTWORK")
GuideViewer.line2:SetPoint("TOPLEFT", GuideViewer.stepObjective, "BOTTOMLEFT", 0, -6)
GuideViewer.line2:SetPoint("RIGHT", -Padding, 0)
GuideViewer.line2:SetHeight(1.5)
GuideViewer.line2:SetColorTexture(0.6, 0.6, 0.9, 0.8)

-- Notes
GuideViewer.notesLabel = GuideViewer:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
GuideViewer.notesLabel:SetPoint("TOPLEFT", GuideViewer.line2, "BOTTOMLEFT", 0, -8)
GuideViewer.notesLabel:SetText("|A:poi-workorders:16:16:0:-1|a Notes:")

GuideViewer.notesText = GuideViewer:CreateFontString(nil, "OVERLAY", "GameFontWhite")
GuideViewer.notesText:SetPoint("TOPLEFT", GuideViewer.notesLabel, "BOTTOMLEFT", 18, -4)
GuideViewer.notesText:SetWidth(250)
GuideViewer.notesText:SetJustifyH("LEFT")
GuideViewer.notesText:SetText("- Some helpful notes here.")

------------------------------------------------------------
-- Green Tint (Complete)
------------------------------------------------------------
GuideViewer.completeOverlay = GuideViewer:CreateTexture(nil, "OVERLAY")
GuideViewer.completeOverlay:SetAllPoints()
GuideViewer.completeOverlay:SetColorTexture(0, 1, 0, 0.1) -- light green tint
GuideViewer.completeOverlay:Hide()

------------------------------------------------------------
-- Red Tint (Invalid Step)
------------------------------------------------------------
GuideViewer.invalidOverlay = GuideViewer:CreateTexture(nil, "OVERLAY")
GuideViewer.invalidOverlay:SetAllPoints()
GuideViewer.invalidOverlay:SetColorTexture(1, 0, 0, 0.1) -- light red tint
GuideViewer.invalidOverlay:Hide()

------------------------------------------------------------
-- Footer Bar (Bottom Attached)
------------------------------------------------------------
local FooterBar = CreateFrame("Frame", nil, GuideViewer, "BackdropTemplate")
_G.IronPathFooter = FooterBar

FooterBar:SetHeight(24)
FooterBar:SetPoint("BOTTOMLEFT", GuideViewer, "BOTTOMLEFT", 0, -24)
FooterBar:SetPoint("BOTTOMRIGHT", GuideViewer, "BOTTOMRIGHT")
FooterBar:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8" })
FooterBar:SetBackdropColor(0.05, 0.10, 0.18, 0.85)

FooterBar.guideTitle = FooterBar:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
FooterBar.guideTitle:SetPoint("LEFT", Padding, 0)
FooterBar.guideTitle:SetText("Guide: Elwynn Forest")

FooterBar.version = FooterBar:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
FooterBar.version:SetPoint("RIGHT", -Padding, 0)
FooterBar.version:SetText("v0.9.2")

------------------------------------------------------------
-- Step Animation
------------------------------------------------------------
local glow = GuideViewer:CreateAnimationGroup()
glow:SetLooping("NONE")

local fadeOut = glow:CreateAnimation("Alpha")
fadeOut:SetFromAlpha(1)
fadeOut:SetToAlpha(0.7)
fadeOut:SetDuration(0.3)
fadeOut:SetOrder(1)



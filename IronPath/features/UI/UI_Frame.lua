-- ============================================================--
-- IronPath_UI.lua – Brushed Cobalt Layout
-- ============================================================--
local IronPath = _G.IronPath

------------------------------------------------------------
-- Globals
------------------------------------------------------------
local GlobalWidth = 320
local Padding = 3

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
NavBar:SetBackdropColor(0.05, 0.08, 0.16, 1)
NavBar:SetBackdropBorderColor(0.10, 0.14, 0.22, 1.0)

-- Title
NavBar.title = NavBar:CreateFontString(nil, "OVERLAY", "GameFontNormal")
NavBar.title:SetPoint("LEFT", Padding, 0)
NavBar.title:SetText("|cff00ccffIronPath |cffffcc00Classic|r")



-- Navigation Buttons

-- Backward
NavBar.prevBtn = CreateFrame("Button", nil, NavBar)
NavBar.prevBtn:SetSize(26, 16)
NavBar.prevBtn:SetPoint("RIGHT", NavBar, "RIGHT", -85, 0)

local icon = NavBar.prevBtn:CreateTexture(nil, "ARTWORK")
icon:SetAtlas("common-icon-backarrow", true)
icon:SetAllPoints()
NavBar.prevBtn.icon = icon
NavBar.prevBtn:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")


-- Step Info
NavBar.stepInfo = NavBar:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
NavBar.stepInfo:SetPoint("LEFT", NavBar.prevBtn, "RIGHT", 0, 0)
NavBar.stepInfo:SetText("Step X of X")


-- Forward
NavBar.nextBtn = CreateFrame("Button", nil, NavBar)
NavBar.nextBtn:SetSize(26, 16)
NavBar.nextBtn:SetPoint("LEFT", NavBar.stepInfo, "RIGHT", 0, 0)

local icon = NavBar.nextBtn:CreateTexture(nil, "ARTWORK")
icon:SetAtlas("common-icon-forwardarrow", true)
icon:SetAllPoints()
NavBar.nextBtn.icon = icon
NavBar.nextBtn:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")


------------------------------------------------------------
-- GuideViewer – Attached Below NavBar
------------------------------------------------------------
local GuideViewer = CreateFrame("Frame", "IronPathViewer", NavBar, "BackdropTemplate")
_G.IronPathViewer = GuideViewer

GuideViewer:SetSize(GlobalWidth, 200)
GuideViewer:SetPoint("TOP", NavBar, "BOTTOM", 0, 0)
GuideViewer:SetBackdrop({ bgFile = "Interface\\ChatFrame\\ChatFrameBackground" })
GuideViewer:SetBackdropColor(0.15, 0.15, 0.15, 0.75)

-- Objectives Anchor
GuideViewer.objectivesAnchor = CreateFrame("Frame", nil, GuideViewer, "BackdropTemplate")
GuideViewer.objectivesAnchor:SetSize(1, 1)
GuideViewer.objectivesAnchor:SetPoint("TOPLEFT", 0, 1)

------------------------------------------------------------
-- Green Tint (Complete)
------------------------------------------------------------
GuideViewer.completeOverlay = GuideViewer:CreateTexture(nil, "OVERLAY")
GuideViewer.completeOverlay:SetAllPoints()
GuideViewer.completeOverlay:SetColorTexture(0, 1, 0, 0.3)
GuideViewer.completeOverlay:Hide()

------------------------------------------------------------
-- Red Tint (Invalid Step)
------------------------------------------------------------
GuideViewer.invalidOverlay = GuideViewer:CreateTexture(nil, "OVERLAY")
GuideViewer.invalidOverlay:SetAllPoints()
GuideViewer.invalidOverlay:SetColorTexture(1, 0, 0, 0.6)
GuideViewer.invalidOverlay:Hide()

------------------------------------------------------------
-- Footer Bar (Bottom Attached)
------------------------------------------------------------
local FooterBar = CreateFrame("Frame", nil, GuideViewer, "BackdropTemplate")
_G.IronPathFooter = FooterBar

FooterBar:SetHeight(16)
FooterBar:SetPoint("TOPLEFT", GuideViewer, "BOTTOMLEFT", 0, 0)
FooterBar:SetPoint("TOPRIGHT", GuideViewer, "BOTTOMRIGHT", 0, 0)
FooterBar:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8" })
FooterBar:SetBackdropColor(0.06, 0.12, 0.22, 1) -- slightly more visible contrast

FooterBar.version = FooterBar:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
FooterBar.version:SetPoint("CENTER")
local version = GetAddOnMetadata("IronPath", "Version")
FooterBar.version:SetText("CXL - v" .. version)
FooterBar._isFooter = true

-- ===========================================================================
-- ===========================================================================
-- ===========================================================================
-- ===========================================================================

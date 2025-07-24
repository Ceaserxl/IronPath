--============================================================--
-- IronPath_UI.lua – Brushed Cobalt Layout (NavBar Primary)
--============================================================--
local IronPath = _G.IronPath

------------------------------------------------------------
-- Globals
------------------------------------------------------------
local GlobalWidth = 280
local Padding = 3

--============================================================
-- Icons =====================================================
--============================================================
talkIcon        = "voicechat-icon-STT"
acceptIcon      = "QuestNormal"
turninIcon      = "QuestTurnin"
trainIcon       = "Profession"
checkmarkIcon   = "checkmark-minimal"
checkboxIcon    = "checkbox-minimal"
killIcon        = "DungeonSkull"
collectIcon     = "Banker"
destroyIcon     = "XMarksTheSpot"
hearthIcon      = "Innkeeper"
fpathIcon       = "TaxiNode_Neutral"
learnIcon       = "Class"
buyIcon         = "Auctioneer"
useIcon         = "Focus"
noteIcon        = "poi-workorders"
goToIcon        = "FlightMaster"
blankIcon       = "DungeonSkulls"

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

GuideViewer:SetSize(GlobalWidth, 200)
GuideViewer:SetPoint("TOP", NavBar, "BOTTOM", 0, 0)
GuideViewer:SetBackdrop({
  bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
})
GuideViewer:SetBackdropColor(0.15, 0.15, 0.15, 0.75)

------------------------------------------------------------
-- Objective Line Creator
------------------------------------------------------------
ObjectiveStyleMap = {
    goTo    = { icon = "FlightMaster",       label = "Go To: ",       color = {0.6, 0.8, 1} },
    walk    = { icon = "FlightMaster",       label = "Walk: ",        color = {0.6, 0.8, 1} },
    talk    = { icon = "voicechat-icon-STT", label = "Talk To: ",     color = {0.1, 1.0, 0.1} },
    accept  = { icon = "QuestNormal",        label = "Accept: ",      color = {1.0, 0.8, 0.4} },
    grind   = { icon = "VignetteEvent",      label = "Reach Level: ", color = {1.0, 0.8, 0.4} },
    turnin  = { icon = "QuestTurnin",        label = "Turn In: ",     color = {1.0, 0.8, 0.4} },
    kill    = { icon = "DungeonSkull",       label = "Kill: ",        color = {1.0, 0.3, 0.3} },
    collect = { icon = "Banker",             label = "Collect: ",     color = {1.0, 0.85, 0.2} },
    destroy = { icon = "XMarksTheSpot",      label = "Destroy: ",     color = {1.0, 0.4, 0.4} },
    hearth  = { icon = "Innkeeper",          label = "Set Hearth: ",      color = {1.0, 0.6, 1.0} },
    fpath   = { icon = "TaxiNode_Neutral",   label = "Flight Path: ", color = {0.5, 0.8, 1.0} },
    train   = { icon = "Profession",         label = "Train: ",       color = {0.8, 0.8, 1.0} },
    learn   = { icon = "Class",              label = "Learn: ",       color = {1.0, 1.0, 0.4} },
    buy     = { icon = "Auctioneer",         label = "Buy: ",         color = {1.0, 0.85, 0.5} },
    use     = { icon = "Focus",              label = "Use: ",         color = {0.9, 0.9, 1.0} },
    note    = { icon = "poi-workorders",     label = "",              color = {0.7, 0.7, 0.7} },
}

function GuideViewer:CreateObjectiveLine(action, targetText, isComplete, blankBox)
    local parent = GuideViewer
    parent._lastObjectiveLine = parent._lastObjectiveLine or parent.objectivesLabel
    parent._objectiveTotalHeight = parent._objectiveTotalHeight or 0

    local entry = ObjectiveStyleMap[action] or { icon = "VignetteKillElite", label = "", color = {1, 1, 1} }
    local r, g, b = unpack(entry.color)

    local frame = CreateFrame("Button", nil, parent, "BackdropTemplate")
    frame:SetSize(GlobalWidth, 0)
    frame:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8" })
    frame:SetBackdropColor(
        isComplete == nil and 0.5 or (isComplete and 0.1 or 0.1),
        isComplete == nil and 0.1 or (isComplete and 0.3 or 0.1),
        isComplete == nil and 0.1 or (isComplete and 0.1 or 0.1),
        0.75
    )

    frame:SetScript("OnEnter", function()
        -- GameTooltip:SetOwner(IronPathFooter, "ANCHOR_BOTTOM", 0, -5)
        -- GameTooltip:SetText("Toggle Completion", 1, 1, 1)
        -- GameTooltip:Show()
        if not IronPath.db.profile.stepDebug then
            frame:SetBackdropColor(0.6, 0.6, 0.6, 0.30)
        end
    end)

    frame:SetScript("OnLeave", function()
        -- GameTooltip:Hide()
        local c = frame.checked and 0.3 or 0.1
        frame:SetBackdropColor(0.1, c, 0.1, 0.75)
    end)

    frame:SetScript("OnClick", function(self)
        self.checked = not self.checked
        self.checkIcon:SetAtlas(self.checked and "checkmark-minimal" or "checkbox-minimal")
        self:SetBackdropColor(self.checked and 0.1 or 0.1, self.checked and 0.3 or 0.1, self.checked and 0.1 or 0.1, 1)
    end)

    frame.checked = isComplete

    -- Checkbox icon
    local check = frame:CreateTexture(nil, "ARTWORK")
    check:SetSize(14, 14)
    check:SetPoint("TOPLEFT", frame, "TOPLEFT", 6, -5)

    if action == "note" or action == "goTo" then
        check:SetTexture("Interface\\Buttons\\WHITE8x8")
        check:SetVertexColor(0, 0, 0, 0) -- fully transparent
    else
        check:SetAtlas(isComplete and "checkmark-minimal" or "checkbox-minimal")
    end
    if blankBox then
        check:SetTexture("Interface\\Buttons\\WHITE8x8")
        check:SetVertexColor(0, 0, 0, 0) -- fully transparent
    else
        check:SetAtlas(isComplete and "checkmark-minimal" or "checkbox-minimal")
    end

    frame.checkIcon = check

    -- Action icon
    local icon = frame:CreateTexture(nil, "ARTWORK")
    icon:SetSize(16, 16)
    icon:SetAtlas(entry.icon or "VignetteKillElite")
    icon:SetPoint("TOPLEFT", check, "TOPRIGHT", 5, 2)

    -- Label text
    local label = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    label:SetPoint("TOPLEFT", icon, "TOPRIGHT", 6, 0)
    label:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -4, 0)
    label:SetJustifyH("LEFT")
    label:SetJustifyV("TOP")
    label:SetWordWrap(true)
    label:SetWidth(GlobalWidth-50)
    label:SetText(string.format("|cffffffff%s|r|cff%02x%02x%02x%s|r", entry.label, r * 255, g * 255, b * 255, targetText))

    -- Resize dynamically to label content
    label:SetHeight(0)
    local h = label:GetStringHeight() + 8
    label:SetHeight(h)
    frame:SetHeight(h)

    -- Click toggles checkbox and color
    frame:SetScript("OnClick", function(self)
        self.checked = not self.checked
        self.checkIcon:SetAtlas(self.checked and "checkmark-minimal" or "checkbox-minimal")
        self:SetBackdropColor(self.checked and 0.1 or 0.1, self.checked and 0.3 or 0.1, self.checked and 0.1 or 0.1, 1)
    end)

    -- Position and display
    frame:SetPoint("TOPLEFT", parent._lastObjectiveLine, "BOTTOMLEFT", 0, 0)
    parent._lastObjectiveLine = frame
    frame:Show()

    -- Adjust GuideViewer height
    parent._objectiveTotalHeight = parent._objectiveTotalHeight + h
    local baseHeight = 0
    GuideViewer:SetHeight(baseHeight + parent._objectiveTotalHeight)

    return frame
end

function GuideViewer:ResetObjectiveLines()
    for _, child in ipairs({ self:GetChildren() }) do
        if child ~= self.objectivesLabel and not child._isSticky and not child._isFooter then
            child:Hide()
            child:SetParent(nil)
        end
    end

    self._lastObjectiveLine = self.objectivesLabel
    self._objectiveTotalHeight = 0
end

------------------------------------------------------------
-- GuideViewer Contents
------------------------------------------------------------
-- Objectives Label
GuideViewer.objectivesLabel = GuideViewer:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
GuideViewer.objectivesLabel:SetPoint("TOPLEFT", 0, 1)

-- Reset tracker for stacking
GuideViewer:ResetObjectiveLines()

-- Add dummy objectives
GuideViewer:CreateObjectiveLine("goTo",   "Goldshire", true)         -- ✅
GuideViewer:CreateObjectiveLine("talk",   "Marshal Dughan", false)   -- ☐
GuideViewer:CreateObjectiveLine("accept", "Westfall Stew", true)     -- ✅
GuideViewer:CreateObjectiveLine("kill",   "10 Kobold Workers (0/10)", false) -- ☐
GuideViewer:CreateObjectiveLine("note",   "You can find more at 51,37", false) 
GuideViewer:CreateObjectiveLine("destroy",   "Hearthstone", true) 

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

FooterBar:SetHeight(24)
FooterBar:SetPoint("TOPLEFT", GuideViewer, "BOTTOMLEFT", 0, 0)
FooterBar:SetPoint("TOPRIGHT", GuideViewer, "BOTTOMRIGHT", 0, 0)
FooterBar:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8" })
FooterBar:SetBackdropColor(0.06, 0.12, 0.22, 1) -- slightly more visible contrast

FooterBar.guideTitle = FooterBar:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
FooterBar.guideTitle:SetPoint("LEFT", Padding, 0)
FooterBar.guideTitle:SetText("Guide: Elwynn Forest")

-- Step Info
FooterBar.stepInfo = FooterBar:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
FooterBar.stepInfo:SetPoint("LEFT", FooterBar.guideTitle, "RIGHT", 12, 0)
FooterBar.stepInfo:SetText("Step 1 of 1")

FooterBar.version = FooterBar:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
FooterBar.version:SetPoint("RIGHT", -Padding, 0)
FooterBar.version:SetText("v0.9.2")
FooterBar._isFooter = true

------------------------------------------------------------
-- LearnViewer – Attached Below FooterBar
------------------------------------------------------------
local LearnViewer = CreateFrame("Frame", "IronPathLearnViewer", FooterBar, "BackdropTemplate")
_G.IronPathLearnViewer = LearnViewer

LearnViewer:SetSize(GlobalWidth, 100)
LearnViewer:SetPoint("TOP", FooterBar, "BOTTOM", 0, -5)
LearnViewer:SetBackdrop({
  bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
})
LearnViewer:SetBackdropColor(0.10, 0.12, 0.18, 0.75)
LearnViewer:Hide()

------------------------------------------------------------
-- LearnViewer:CreateObjectiveLine
-- Creates a single objective line in the LearnViewer panel.
-- Mirrors GuideViewer behavior with checkbox, icon, and label.
-- Handles visual state for completion and hover.
--
-- Params:
--   action (string)       - The step action type (e.g. "learn", "train")
--   targetText (string)   - The objective text to display
--   isComplete (boolean)  - Whether the step is already completed
--   blankBox (boolean)    - If true, disables the checkbox display
------------------------------------------------------------

function LearnViewer:CreateObjectiveLine(action, targetText, isComplete, blankBox)
    self._lastObjectiveLine = self._lastObjectiveLine or self.objectivesLabel
    self._objectiveTotalHeight = self._objectiveTotalHeight or 0

    local entry = ObjectiveStyleMap[action] or { icon = "VignetteKillElite", label = "", color = {1, 1, 1} }
    local r, g, b = unpack(entry.color)

    local frame = CreateFrame("Button", nil, self, "BackdropTemplate")
    frame:SetSize(GlobalWidth, 0)
    frame:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8x8" })
    frame:SetBackdropColor(
        isComplete == nil and 0.5 or (isComplete and 0.1 or 0.1),
        isComplete == nil and 0.1 or (isComplete and 0.3 or 0.1),
        isComplete == nil and 0.1 or (isComplete and 0.1 or 0.1),
        0.75
    )

    frame:SetScript("OnEnter", function()
        if not IronPath.db.profile.stepDebug then
            frame:SetBackdropColor(0.6, 0.6, 0.6, 0.30)
        end
    end)

    frame:SetScript("OnLeave", function()
        local c = frame.checked and 0.3 or 0.1
        frame:SetBackdropColor(0.1, c, 0.1, 0.75)
    end)

    frame:SetScript("OnClick", function(self)
        self.checked = not self.checked
        self.checkIcon:SetAtlas(self.checked and "checkmark-minimal" or "checkbox-minimal")
        self:SetBackdropColor(self.checked and 0.1 or 0.1, self.checked and 0.3 or 0.1, self.checked and 0.1 or 0.1, 1)
    end)

    frame.checked = isComplete

    local check = frame:CreateTexture(nil, "ARTWORK")
    check:SetSize(14, 14)
    check:SetPoint("TOPLEFT", frame, "TOPLEFT", 6, -5)

    if blankBox then
        check:SetTexture("Interface\\Buttons\\WHITE8x8")
        check:SetVertexColor(0, 0, 0, 0)
    else
        check:SetAtlas(isComplete and "checkmark-minimal" or "checkbox-minimal")
    end

    frame.checkIcon = check

    local icon = frame:CreateTexture(nil, "ARTWORK")
    icon:SetSize(16, 16)
    icon:SetAtlas(entry.icon or "VignetteKillElite")
    icon:SetPoint("TOPLEFT", check, "TOPRIGHT", 5, 2)

    local label = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    label:SetPoint("TOPLEFT", icon, "TOPRIGHT", 6, 0)
    label:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -4, 0)
    label:SetJustifyH("LEFT")
    label:SetJustifyV("TOP")
    label:SetWordWrap(true)
    label:SetWidth(GlobalWidth - 50)
    label:SetText(string.format("|cffffffff%s|r|cff%02x%02x%02x%s|r", entry.label, r * 255, g * 255, b * 255, targetText))

    label:SetHeight(0)
    local h = label:GetStringHeight() + 8
    label:SetHeight(h)
    frame:SetHeight(h)

    frame:SetPoint("TOPLEFT", self._lastObjectiveLine, "BOTTOMLEFT", 0, 0)
    self._lastObjectiveLine = frame
    frame:Show()

    self._objectiveTotalHeight = self._objectiveTotalHeight + h
    self:SetHeight(self._objectiveTotalHeight)

    return frame
end

-- Reset objective lines in LearnViewer
function LearnViewer:ResetObjectiveLines()
    for _, child in ipairs({ self:GetChildren() }) do
        if child ~= self.objectivesLabel and not child._isSticky and not child._isFooter then
            child:Hide()
            child:SetParent(nil)
        end
    end

    self._lastObjectiveLine = self.objectivesLabel
    self._objectiveTotalHeight = 0
end

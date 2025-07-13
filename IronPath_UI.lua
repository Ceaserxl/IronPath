-- ================================================================
-- IronPath_UI.lua
-- Structured UI layout for IronPath with dynamic height
-- ================================================================

-- ------------------------------------------------
-- Main Frame
-- ------------------------------------------------
IronPathUI = CreateFrame("Frame", "IronPathFrame", UIParent, "BackdropTemplate")
IronPathUI:SetSize(420, 240)
IronPathUI:SetPoint("CENTER")
IronPathUI:SetMovable(true)
IronPathUI:EnableMouse(true)
IronPathUI:SetClampedToScreen(true)
IronPathUI:SetBackdrop({
    bgFile   = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",
    edgeFile = "Interface\\Buttons\\WHITE8x8",
    tile     = false,
    edgeSize = 2,
    insets   = { left=2, right=2, top=2, bottom=2 }
})
IronPathUI:SetBackdropBorderColor(0, 0.8, 1, 1)
IronPathUI:SetBackdropColor(0.05, 0.05, 0.05, 0.95)

IronPathUI:SetScript("OnMouseDown", function(self) self:StartMoving() end)
IronPathUI:SetScript("OnMouseUp", function(self) self:StopMovingOrSizing() end)

-- ------------------------------------------------
-- Neon Pulse Animation
-- ------------------------------------------------
local glowAnim = IronPathUI:CreateAnimationGroup()
glowAnim:SetLooping("NONE")
local pulseOut = glowAnim:CreateAnimation("Alpha")
pulseOut:SetFromAlpha(1)
pulseOut:SetToAlpha(0.7)
pulseOut:SetDuration(0.3)
pulseOut:SetOrder(1)
local pulseIn = glowAnim:CreateAnimation("Alpha")
pulseIn:SetFromAlpha(0.7)
pulseIn:SetToAlpha(1)
pulseIn:SetDuration(0.3)
pulseIn:SetOrder(2)
function IronPathUI:Pulse() glowAnim:Play() end

-- ------------------------------------------------
-- Title
-- ------------------------------------------------
IronPathUI.title = IronPathUI:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
IronPathUI.title:SetPoint("TOP", 0, -10)
IronPathUI.title:SetText("|cff00ffffIronPath Hardcore|r")

-- ------------------------------------------------
-- Navigation Bar
-- ------------------------------------------------
IronPathUI.navInfo = IronPathUI:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
IronPathUI.navInfo:SetPoint("TOP", 0, -35)
IronPathUI.navInfo:SetText("|cffffff00Step 0/0|r")

local nextBtn = CreateFrame("Button", nil, IronPathUI, "UIPanelButtonTemplate")
nextBtn:SetSize(60, 20)
nextBtn:SetPoint("TOPRIGHT", -10, -35)
nextBtn:SetText("Next")

local prevBtn = CreateFrame("Button", nil, IronPathUI, "UIPanelButtonTemplate")
prevBtn:SetSize(60, 20)
prevBtn:SetPoint("TOPLEFT", 10, -35)
prevBtn:SetText("Prev")

IronPathUI.nextBtn = nextBtn
IronPathUI.prevBtn = prevBtn

-- ------------------------------------------------
-- Zone + Level Range
-- ------------------------------------------------
IronPathUI.zoneInfo = IronPathUI:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
IronPathUI.zoneInfo:SetPoint("TOPLEFT", 15, -65)
IronPathUI.zoneInfo:SetTextColor(0.5, 0.8, 1)
IronPathUI.zoneInfo:SetText("Zone: - | Level: -")

-- ------------------------------------------------
-- Step Text Block
-- ------------------------------------------------
IronPathUI.stepText = IronPathUI:CreateFontString(nil, "OVERLAY", "GameFontWhite")
IronPathUI.stepText:SetPoint("TOPLEFT", 15, -90)
IronPathUI.stepText:SetWidth(390)
IronPathUI.stepText:SetJustifyH("LEFT")
IronPathUI.stepText:SetJustifyV("TOP")
IronPathUI.stepText:SetTextColor(0.6, 0.9, 1)

-- ------------------------------------------------
-- Inline Settings Checkboxes
-- ------------------------------------------------
local checkboxSpacing = 110

local autoAccept = CreateFrame("CheckButton", "IronPath_AutoAccept", IronPathUI, "ChatConfigCheckButtonTemplate")
autoAccept:SetPoint("BOTTOMLEFT", 15, 10)
autoAccept.Text:SetText("Auto Accept")
autoAccept:SetHitRectInsets(0, -autoAccept.Text:GetStringWidth(), 0, 0)

local autoTurnin = CreateFrame("CheckButton", "IronPath_AutoTurnin", IronPathUI, "ChatConfigCheckButtonTemplate")
autoTurnin:SetPoint("LEFT", autoAccept, "RIGHT", checkboxSpacing, 0)
autoTurnin.Text:SetText("Auto Turn In")
autoTurnin:SetHitRectInsets(0, -autoTurnin.Text:GetStringWidth(), 0, 0)

local autoSkip = CreateFrame("CheckButton", "IronPath_AutoSkip", IronPathUI, "ChatConfigCheckButtonTemplate")
autoSkip:SetPoint("LEFT", autoTurnin, "RIGHT", checkboxSpacing, 0)
autoSkip.Text:SetText("Auto Skip")
autoSkip:SetHitRectInsets(0, -autoSkip.Text:GetStringWidth(), 0, 0)

IronPathUI.autoAccept = autoAccept
IronPathUI.autoTurnin = autoTurnin
IronPathUI.autoSkip = autoSkip

-- ------------------------------------------------
-- Settings Persistence + Debug
-- ------------------------------------------------
if not IronPath_Data then IronPath_Data = {} end
if not IronPath_Data.settings then IronPath_Data.settings = {} end

autoAccept:SetChecked(IronPath_Data.settings.autoAccept or false)
autoTurnin:SetChecked(IronPath_Data.settings.autoTurnin or false)
autoSkip:SetChecked(IronPath_Data.settings.autoSkip or false)

-- debug on load:
print(string.format(
    "|cffffd100IronPath:|r Loaded settings — Accept:%s Turnin:%s Skip:%s",
    autoAccept:GetChecked() and "ON" or "OFF",
    autoTurnin:GetChecked() and "ON" or "OFF",
    autoSkip:GetChecked() and "ON" or "OFF"
))

local function saveSettings()
    IronPath_Data.settings.autoAccept = autoAccept:GetChecked()
    IronPath_Data.settings.autoTurnin = autoTurnin:GetChecked()
    IronPath_Data.settings.autoSkip   = autoSkip:GetChecked()
    print(string.format(
        "|cffffd100IronPath:|r Saved settings — Accept:%s Turnin:%s Skip:%s",
        IronPath_Data.settings.autoAccept and "ON" or "OFF",
        IronPath_Data.settings.autoTurnin and "ON" or "OFF",
        IronPath_Data.settings.autoSkip   and "ON" or "OFF"
    ))
end

autoAccept:SetScript("OnClick", saveSettings)
autoTurnin:SetScript("OnClick", saveSettings)
autoSkip:SetScript("OnClick", saveSettings)

-- ------------------------------------------------
-- Highlight Animation
-- ------------------------------------------------
function IronPathUI:FlashHighlight()
    local flash = self:CreateTexture(nil, "OVERLAY")
    flash:SetColorTexture(0, 0.8, 1, 0.3)
    flash:SetAllPoints()
    local anim = flash:CreateAnimationGroup()
    local fade = anim:CreateAnimation("Alpha")
    fade:SetFromAlpha(0.3)
    fade:SetToAlpha(0)
    fade:SetDuration(0.5)
    fade:SetSmoothing("OUT")
    anim:SetScript("OnFinished", function() flash:Hide() end)
    flash:Show()
    anim:Play()
end

-- ------------------------------------------------
-- Dynamic Height
-- ------------------------------------------------
function IronPathUI:AdjustHeight()
    local topSpace     = 90
    local settingsSpace= 40
    local stepHeight   = self.stepText:GetStringHeight() or 0
    local totalHeight  = topSpace + stepHeight + settingsSpace
    if totalHeight < 200 then totalHeight = 200 end
    self:SetHeight(totalHeight)
end

-- ------------------------------------------------
-- Settings: Persistence + Debug
-- ------------------------------------------------
local settingsHandler = CreateFrame("Frame")
settingsHandler:RegisterEvent("PLAYER_LOGIN")
settingsHandler:SetScript("OnEvent", function()

    -- initialize or load
    IronPath_Data = IronPath_Data or {}
    IronPath_Data.settings = IronPath_Data.settings or {}

    autoAccept:SetChecked(IronPath_Data.settings.autoAccept or false)
    autoTurnin:SetChecked(IronPath_Data.settings.autoTurnin or false)
    autoSkip:SetChecked(IronPath_Data.settings.autoSkip or false)

    print(string.format(
        "|cffffd100IronPath Settings Loaded:|r Accept:%s Turnin:%s Skip:%s",
        autoAccept:GetChecked() and "ON" or "OFF",
        autoTurnin:GetChecked() and "ON" or "OFF",
        autoSkip:GetChecked() and "ON" or "OFF"
    ))

    -- saving logic
    local function saveSettings()
        IronPath_Data.settings.autoAccept = autoAccept:GetChecked()
        IronPath_Data.settings.autoTurnin = autoTurnin:GetChecked()
        IronPath_Data.settings.autoSkip   = autoSkip:GetChecked()
        print(string.format(
            "|cffffd100IronPath Settings Saved:|r Accept:%s Turnin:%s Skip:%s",
            IronPath_Data.settings.autoAccept and "ON" or "OFF",
            IronPath_Data.settings.autoTurnin and "ON" or "OFF",
            IronPath_Data.settings.autoSkip   and "ON" or "OFF"
        ))
    end

    autoAccept:SetScript("OnClick", saveSettings)
    autoTurnin:SetScript("OnClick", saveSettings)
    autoSkip:SetScript("OnClick", saveSettings)

end)


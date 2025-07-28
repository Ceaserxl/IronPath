-- ============================================================--
-- IronPath_UI.lua – Brushed Cobalt Layout (NavBar Primary)
-- ============================================================--
local IronPath = _G.IronPath

------------------------------------------------------------
-- Globals
------------------------------------------------------------
local GlobalWidth = 320
local Padding = 3

-- ============================================================
-- Icons =====================================================
-- ============================================================
talkIcon = "voicechat-icon-STT"
acceptIcon = "QuestNormal"
turninIcon = "QuestTurnin"
trainIcon = "Profession"
checkmarkIcon = "checkmark-minimal"
checkboxIcon = "checkbox-minimal"
killIcon = "DungeonSkull"
collectIcon = "Banker"
destroyIcon = "XMarksTheSpot"
hearthIcon = "Innkeeper"
fpathIcon = "TaxiNode_Neutral"
learnIcon = "Class"
buyIcon = "Auctioneer"
useIcon = "Focus"
noteIcon = "poi-workorders"
goToIcon = "FlightMaster"
blankIcon = "DungeonSkulls"

------------------------------------------------------------
-- NavBar – Main Frame
------------------------------------------------------------
local NavBar = CreateFrame("Frame", "IronPathNavBar", UIParent,
                           "BackdropTemplate")
_G.IronPathUI = NavBar

NavBar:SetSize(GlobalWidth, 28)
NavBar:SetPoint("CENTER")
NavBar:SetMovable(true)
NavBar:EnableMouse(true)
NavBar:SetClampedToScreen(true)
NavBar:SetScript("OnMouseDown", NavBar.StartMoving)
NavBar:SetScript("OnMouseUp", NavBar.StopMovingOrSizing)
NavBar:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8x8"})
NavBar:SetBackdropColor(0.05, 0.08, 0.16, 1)
NavBar:SetBackdropBorderColor(0.10, 0.14, 0.22, 1.0)

-- Title
NavBar.title = NavBar:CreateFontString(nil, "OVERLAY", "GameFontNormal")
NavBar.title:SetPoint("LEFT", Padding, 0)
NavBar.title:SetText("|cff00ccffIronPath |cffffcc00Classic|r")

-- Step Info
NavBar.stepInfo = NavBar:CreateFontString(nil, "OVERLAY",
                                          "GameFontHighlightSmall")
NavBar.stepInfo:SetPoint("LEFT", NavBar.title, "RIGHT", 10, 0)
NavBar.stepInfo:SetText("Step X of X")

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
local GuideViewer = CreateFrame("Frame", "IronPathViewer", NavBar,
                                "BackdropTemplate")
_G.IronPathViewer = GuideViewer

GuideViewer:SetSize(GlobalWidth, 200)
GuideViewer:SetPoint("TOP", NavBar, "BOTTOM", 0, 0)
GuideViewer:SetBackdrop({bgFile = "Interface\\ChatFrame\\ChatFrameBackground"})
GuideViewer:SetBackdropColor(0.15, 0.15, 0.15, 0.75)

------------------------------------------------------------
-- Objective Line Creator
------------------------------------------------------------
ObjectiveStyleMap = {
    goTo = {icon = "FlightMaster", label = "Go To: ", color = {0.6, 0.80, 1.0}},
    walk = {icon = "FlightMaster", label = "", color = {0.6, 0.80, 1.0}},
    walkObj = {
        icon = "Vehicle-TempleofKotmogu-CyanBall",
        label = "",
        color = {1, 1, 1}
    },
    complete = {
        icon = "Vehicle-TempleofKotmogu-CyanBall",
        label = "",
        color = {1, 1, 1}
    },
    talk = {
        icon = "voicechat-icon-STT",
        label = "Talk To: ",
        color = {0.1, 1.00, 0.1}
    },
    accept = {
        icon = "QuestNormal",
        label = "Accept: ",
        color = {1.0, 0.80, 0.4}
    },
    ding = {icon = "VignetteEvent", label = "", color = {1.0, 0.85, 0.2}},
    turnin = {
        icon = "QuestTurnin",
        label = "Turn In: ",
        color = {1.0, 0.80, 0.4}
    },
    kill = {icon = "DungeonSkull", label = "", color = {1.0, 0.85, 0.2}},
    vendor = {icon = "Auctioneer", label = "", color = {1.0, 1.0, 1.0}},
    collect = {icon = "Banker", label = "Collect: ", color = {1.0, 0.85, 0.2}},
    trash = {icon = "XMarksTheSpot", label = "", color = {0.4, 0.7, 1.0}},
    home = {
        icon = "Innkeeper",
        label = "Set Hearth: ",
        color = {1.0, 0.60, 1.0}
    },
    fpath = {
        icon = "TaxiNode_Neutral",
        label = "Flight Path: ",
        color = {0.5, 0.80, 1.0}
    },
    skillmax = {icon = "Profession", label = "", color = {0.8, 0.80, 1.0}},
    trainer = {icon = "Class", label = "Train with: ", color = {1.0, 1.00, 0.4}},
    learnspell = {icon = "Class", label = "Learn: ", color = {1.0, 1.00, 0.4}},
    buy = {icon = "Auctioneer", label = "Buy: ", color = {1.0, 0.85, 0.5}},
    use = {icon = "Focus", label = "", color = {0.9, 0.90, 1.0}},
    click = {icon = "QuestObjective", label = "", color = {0.9, 0.90, 1.0}},
    title = {icon = "Focus", label = "", color = {1.0, 0.80, 0.4}},
    note = {
        icon = "Vehicle-TempleofKotmogu-CyanBall",
        label = "",
        color = {1, 1, 1}
    },
    popuptext = {
        icon = "Vehicle-TempleofKotmogu-CyanBall",
        label = "",
        color = {1, 1, 1}
    },
    tip = {icon = "poi-workorders", label = "", color = {0.7, 0.70, 0.7}},
    confirm = {icon = "ArtifactQuest", label = "", color = {1, 1, 1}},
    gossip = {icon = "ArtifactQuest", label = "", color = {1, 1, 1}},
    blank = {icon = "", label = "", color = {1, 1, 1}}
}

local function CreateObjFrame(parent, isComplete, action, objective)
    local frame = CreateFrame("Button", nil, parent, "BackdropTemplate")
    frame:SetSize(GlobalWidth, 0)
    frame:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8x8"})

    frame.checked = isComplete

    local function UpdateColor()
        if frame.checked == true then
            frame:SetBackdropColor(0.05, 0.4, 0.05, 0.75)
        elseif frame.checked == false then
            frame:SetBackdropColor(0.4, 0.05, 0.05, 0.75)
        else
            frame:SetBackdropColor(0.1, 0.1, 0.1, 0.75)
        end
        if action == "use" then frame:SetBackdropColor(0.1, 0.2, 0.6, 1) end
    end

    UpdateColor()

    if action ~= "blank" then
        frame:SetScript("OnEnter", function()
            if not IronPath.db.profile.stepDebug then
                frame:SetBackdropColor(0.7, 0.7, 0.7, 0.3)
            end
        end)

        frame:SetScript("OnLeave", UpdateColor)
    end
    return frame
end

function GuideViewer:CreateObjectiveLine(action, targetText, isComplete,
                                         blankBox, objective)
    local parent = GuideViewer
    parent._lastObjectiveLine = parent._lastObjectiveLine or
                                    parent.objectivesLabel
    parent._objectiveTotalHeight = parent._objectiveTotalHeight or 0

    local entry = ObjectiveStyleMap[action] or
                      {
            icon = "VignetteKillElite",
            label = "",
            color = {1, 1, 1}
        }
    local r, g, b = unpack(entry.color)

    local frame = CreateObjFrame(parent, isComplete, action, objective)
    frame.checked = isComplete

    frame:SetScript("OnClick", function()
        if not objective then return end

        local actionsWithCoords = {
            walk = true,
            kill = true,
            vendor = true,
            accept = true,
            turnin = true,
            ding = true,
            collect = true,
            fpath = true
        }

        if actionsWithCoords[action] and type(objective.coords) == "table" then
            IronPath:DebugPrint("Setting Arrow to objective!")
            IronPath:GoToObjective(objective)
        elseif action == "use" then
            IronPath:DebugPrint("Using Objective Item: " .. objective.item ..
                                    ". ItemID: " .. objective.itemID)
        elseif action == "confirm" then
            objective.isComplete = true
            GuideViewer:ShowStep()
        elseif action == "popuptext" then
            IronPath:DebugPrint("TODO: Add POPUPTEXT window! Stored text: " ..
                                    objective.popuptext)
        end
    end)

    -- Checkbox button
    local checkBtn = CreateFrame("Button", nil, frame)
    checkBtn:SetSize(14, 14)
    checkBtn:SetPoint("TOPLEFT", frame, "TOPLEFT", 6, -5)

    local checkIcon = checkBtn:CreateTexture(nil, "ARTWORK")
    checkIcon:SetAllPoints()
    frame.checkIcon = checkIcon

    if blankBox or action == "note" or action == "walk" then
        checkIcon:SetTexture("Interface\\Buttons\\WHITE8x8")
        checkIcon:SetVertexColor(0, 0, 0, 0)
    else
        checkIcon:SetAtlas(isComplete and "checkmark-minimal" or
                               "checkbox-minimal")
        checkBtn:SetScript("OnClick", function()
            frame.checked = not frame.checked
            checkIcon:SetAtlas(frame.checked and "checkmark-minimal" or
                                   "checkbox-minimal")
            frame:SetBackdropColor(frame.checked and 0.1 or 0.1,
                                   frame.checked and 0.3 or 0.1,
                                   frame.checked and 0.1 or 0.1, 1)
            -- ✅ Mark the data objective complete
            if objective then objective.isComplete = frame.checked end
        end)
    end
    if action == "blank" then frame:SetBackdropColor(0, 0, 0, 1) end
    -- if action == "use" then frame:SetBackdropColor(0.1, 0.2, 0.6, 1) end
    -- Action icon
    local icon = frame:CreateTexture(nil, "ARTWORK")
    icon:SetSize(16, 16)
    icon:SetAtlas(entry.icon or "VignetteKillElite")
    icon:SetPoint("TOPLEFT", checkBtn, "TOPRIGHT", 5, 3)

    -- Label text
    local label = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    label:SetPoint("TOPLEFT", icon, "TOPRIGHT", 6, -2)
    label:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -4, 0)
    label:SetJustifyH("LEFT")
    label:SetJustifyV("TOP")
    label:SetWordWrap(true)
    label:SetWidth(GlobalWidth - 50)
    label:SetText(string.format("|cffffffff%s|r|cff%02x%02x%02x%s|r",
                                entry.label, r * 255, g * 255, b * 255,
                                targetText))

    label:SetHeight(0)
    local h = label:GetStringHeight() + 8
    label:SetHeight(h)
    frame:SetHeight(h)

    -- Position and display
    frame:SetPoint("TOPLEFT", parent._lastObjectiveLine, "BOTTOMLEFT", 0, 0)
    parent._lastObjectiveLine = frame
    frame:Show()

    -- Adjust overall height
    parent._objectiveTotalHeight = parent._objectiveTotalHeight + h
    GuideViewer:SetHeight(parent._objectiveTotalHeight)

    return frame
end

function GuideViewer:ResetObjectiveLines()
    for _, child in ipairs({self:GetChildren()}) do
        if child ~= self.objectivesLabel and not child._isSticky and
            not child._isFooter then
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
GuideViewer.objectivesLabel = GuideViewer:CreateFontString(nil, "OVERLAY",
                                                           "GameFontHighlight")
GuideViewer.objectivesLabel:SetPoint("TOPLEFT", 0, 1)

-- Reset tracker for stacking
GuideViewer:ResetObjectiveLines()

-- Add dummy objectives
GuideViewer:CreateObjectiveLine("goTo", "Goldshire", false)
GuideViewer:CreateObjectiveLine("talk", "Marshal Dughan", false, true) -- ☐
GuideViewer:CreateObjectiveLine("accept", "Westfall Stew", true, false) -- ✅
GuideViewer:CreateObjectiveLine("kill", "10 Kobold Workers (0/10)", false, false) -- ☐
GuideViewer:CreateObjectiveLine("note", "You can find more at 51,37", false,
                                true)

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
FooterBar:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8x8"})
FooterBar:SetBackdropColor(0.06, 0.12, 0.22, 1) -- slightly more visible contrast

FooterBar.guideTitle = FooterBar:CreateFontString(nil, "OVERLAY",
                                                  "GameFontHighlightSmall")
FooterBar.guideTitle:SetPoint("LEFT", Padding, 0)
FooterBar.guideTitle:SetText("GuideName by Author")

-- -- Step Info
-- FooterBar.stepInfo = FooterBar:CreateFontString(nil, "OVERLAY",
--                                                 "GameFontHighlightSmall")
-- FooterBar.stepInfo:SetPoint("LEFT", FooterBar.guideTitle, "RIGHT", 40, 0)
-- FooterBar.stepInfo:SetText("Step X of X completed")

FooterBar.version = FooterBar:CreateFontString(nil, "OVERLAY",
                                               "GameFontDisableSmall")
FooterBar.version:SetPoint("RIGHT", -Padding, 0)
FooterBar.version:SetText("v0.9.2")
FooterBar._isFooter = true

-- ===========================================================================
-- ===========================================================================
-- ===========================================================================
-- ===========================================================================

function GuideViewer:SkipToPreviousVisibleStep()
    local steps = _G.IronPath_CachedVisibleSteps or {}
    local totalSteps = #steps
    local index = self.currentStep - 1

    while index >= 1 do
        local step = steps[index]
        if step and (step._isVisible or IronPath.db.profile.showAllSteps) then
            self.currentStep = index
            return
        end
        index = index - 1
    end

    IronPath:DebugPrint("No previous visible step found.", "warn")
end

function GuideViewer:SkipToNextVisibleStep()
    local steps = _G.IronPath_CachedVisibleSteps or {}
    local totalSteps = #steps
    local index = self.currentStep + 1

    while index <= totalSteps do
        local step = steps[index]
        if step and (step._isVisible or IronPath.db.profile.showAllSteps) then
            self.currentStep = index
            return
        end
        index = index + 1
    end

    IronPath:DebugPrint("No next visible step found.", "warn")
end

-- ============================================================
-- Navigation Buttons – Prev / Next
-- ============================================================
NavBar.nextBtn:SetScript("OnClick", function()
    GuideViewer:SkipToNextVisibleStep()
    IronPath:DebugPrint("Next step: " .. GuideViewer.currentStep, "info")
    GuideViewer:ShowStep()
end)

NavBar.prevBtn:SetScript("OnClick", function()
    GuideViewer:SkipToPreviousVisibleStep()
    IronPath:DebugPrint("Previous step: " .. GuideViewer.currentStep, "info")
    GuideViewer:ShowStep()
end)

-- Simple Parser Frame
local frame = CreateFrame("Frame", "IronPathParseFrame", UIParent,
                          "BackdropTemplate")
frame:SetSize(600, 440)
frame:SetPoint("CENTER")
frame:SetMovable(true)
frame:EnableMouse(true)
frame:RegisterForDrag("LeftButton")
frame:SetScript("OnDragStart", frame.StartMoving)
frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
frame:SetBackdrop({
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
    edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
    edgeSize = 16,
    insets = {left = 4, right = 4, top = 4, bottom = 4}
})
frame:SetBackdropColor(0.1, 0.1, 0.1, 0.9)
frame:EnableKeyboard(true)
frame:SetPropagateKeyboardInput(true)
frame:SetScript("OnKeyDown",
                function(self, key) if key == "ESCAPE" then self:Hide() end end)
frame:Hide()

-- Helper: Creates labeled multiline text box
local function CreateTextArea(parent, labelText, x, y)
    local label = parent:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    label:SetPoint("TOPLEFT", x, y)
    label:SetText(labelText)

    local scroll = CreateFrame("ScrollFrame", nil, parent,
                               "UIPanelScrollFrameTemplate")
    scroll:SetPoint("TOPLEFT", label, "BOTTOMLEFT", 0, -4)
    scroll:SetSize(560, 160)

    local box = CreateFrame("EditBox", nil, scroll, "BackdropTemplate")
    box:SetMultiLine(true)
    box:SetFontObject(ChatFontNormal)
    box:SetWidth(560)
    box:SetBackdrop({
        bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        edgeSize = 8,
        insets = {left = 4, right = 4, top = 4, bottom = 4}
    })
    box:SetBackdropColor(0, 0, 0, 0.5)
    box:SetTextInsets(6, 6, 6, 6)
    scroll:SetScrollChild(box)

    return box
end

local inputBox = CreateTextArea(frame, "Step Input", 20, -12)
inputBox:SetAutoFocus(false)
inputBox:SetScript("OnEscapePressed", function() inputBox:ClearFocus() end)

local outputBox = CreateTextArea(frame, "Parsed Output", 20, -210)
outputBox:SetAutoFocus(false)
outputBox:SetEnabled(true)
outputBox:SetScript("OnEscapePressed", function() outputBox:ClearFocus() end)
outputBox:SetScript("OnTextChanged", function(self)
    self:SetText(self:GetText()) -- re-set the same text to cancel edits
    self:HighlightText() -- auto-highlight on update
end)
outputBox:EnableMouse(true)

-- Parse Button
local parseButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
parseButton:SetSize(100, 24)
parseButton:SetText("Parse")
parseButton:SetPoint("BOTTOM", 0, 12)

parseButton:SetScript("OnClick", function()
    local text = inputBox:GetText()
    local parsed = IronPath.Parser:ParseSteps(text)

    local function TableToString(t, indent)
        indent = indent or 0
        local str = ""
        for k, v in pairs(t) do
            str = str .. string.rep("  ", indent)
            if type(k) == "string" then str = str .. k .. " = " end
            if type(v) == "table" then
                str = str .. "{\n" .. TableToString(v, indent + 1) ..
                          string.rep("  ", indent) .. "},\n"
            elseif type(v) == "string" then
                str = str .. "\"" .. v .. "\",\n"
            else
                str = str .. tostring(v) .. ",\n"
            end
        end
        return str
    end

    outputBox:SetText(TableToString(parsed))
end)

-- Slash command
SLASH_IRONPATHPARSER1 = "/parse"
SlashCmdList["IRONPATHPARSER"] = function()
    frame:SetFrameStrata("DIALOG")
    frame:SetFrameLevel(99)
    frame:SetShown(not frame:IsShown())
end

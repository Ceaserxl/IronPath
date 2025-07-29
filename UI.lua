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
    -- Navigation
    goTo = {icon = "FlightMaster", label = "Go To: ", color = {0.6, 0.80, 1.0}},
    walk = {icon = "FlightMaster", label = "", color = {0.6, 0.80, 1.0}},
    walkNote = {icon = "FlightMaster", label = "", color = {0.6, 0.80, 1.0}},
    fpath = {
        icon = "TaxiNode_Neutral",
        label = "Flight Path: ",
        color = {0.5, 0.80, 1.0}
    },
    home = {
        icon = "Innkeeper",
        label = "Set Hearth: ",
        color = {1.0, 0.60, 1.0}
    },

    -- Quest Flow
    accept = {
        icon = "QuestNormal",
        label = "Accept: ",
        color = {1.0, 0.80, 0.4}
    },
    talk = {
        icon = "voicechat-icon-STT",
        label = "Talk to ",
        color = {0.1, 1.00, 0.1}
    },
    complete = {
        icon = "Vehicle-TempleofKotmogu-PurpleBall",
        label = "",
        color = {1, 1, 1}
    },
    turnin = {
        icon = "QuestTurnin",
        label = "Turn In: ",
        color = {1.0, 0.80, 0.4}
    },

    -- Combat/Collection
    kill = {icon = "DungeonSkull", label = "", color = {1.0, 0.85, 0.2}},
    collect = {icon = "Banker", label = "Collect: ", color = {1.0, 0.85, 0.2}},
    trash = {icon = "XMarksTheSpot", label = "", color = {0.4, 0.7, 1.0}},

    -- Trainer/Profession
    trainer = {icon = "Class", label = "", color = {1.0, 1.00, 0.4}},
    learnspell = {icon = "Class", label = "Learn: ", color = {1.0, 1.00, 0.4}},
    skillmax = {icon = "Profession", label = "", color = {0.8, 0.80, 1.0}},

    -- Vendor/Items
    vendor = {icon = "Auctioneer", label = "", color = {1.0, 1.0, 1.0}},
    buy = {icon = "Auctioneer", label = "Buy ", color = {1.0, 0.85, 0.5}},
    use = {icon = "Focus", label = "", color = {0.9, 0.90, 1.0}},
    click = {
        icon = "Vehicle-TempleofKotmogu-OrangeBall",
        label = "",
        color = {0.9, 0.90, 1.0}
    },

    -- Leveling/Progress
    ding = {icon = "VignetteEvent", label = "", color = {1.0, 0.85, 0.2}},
    confirm = {icon = "ArtifactQuest", label = "", color = {1, 1, 1}},

    -- Misc UI
    note = {
        icon = "Vehicle-TempleofKotmogu-CyanBall",
        label = "",
        color = {1, 1, 1}
    },
    popuptext = {
        icon = "Rotating-MinimapGuideArrow",
        label = "",
        color = {1, 1, 1}
    },
    tip = {icon = "poi-workorders", label = "", color = {0.7, 0.70, 0.7}},
    gossip = {icon = "ArtifactQuest", label = "", color = {1, 1, 1}},
    obj = {icon = "QuestObjective", label = "", color = {1, 1, 1}},
    blank = {icon = "", label = "", color = {1, 1, 1}}
}

function GuideViewer:CreateObjectiveLine(objective)
    local action = objective.type or "note"
    local targetText = objective.label or "(no label)"
    local isComplete = objective.isComplete
    local blankBox = objective.blankBox

    local parent = GuideViewer
    parent._lastObjectiveLine = parent._lastObjectiveLine or
                                    parent.objectivesAnchor
    parent._objectiveTotalHeight = parent._objectiveTotalHeight or 0

    local entry = ObjectiveStyleMap[action] or
                      {
            icon = "VignetteKillElite",
            label = "",
            color = {1, 1, 1}
        }
    local r, g, b = unpack(entry.color)

    -- Secure button base
    local frame = CreateFrame("Button", nil, parent,
                              "SecureActionButtonTemplate,BackdropTemplate")
    frame:SetSize(GlobalWidth, 0)
    frame:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8x8"})
    frame.checked = isComplete

    -- Backdrop color logic
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

    -- Hover highlight
    if action ~= "blank" then
        frame:SetScript("OnEnter", function()
            if not IronPath.db.profile.stepDebug then
                frame:SetBackdropColor(0.7, 0.7, 0.7, 0.3)
            end
        end)
        frame:SetScript("OnLeave", UpdateColor)
    end

    -- Secure attributes
    if action == "use" and objective then
        frame:SetAttribute("type", "item")
        if objective.itemID then
            frame:SetAttribute("item", "item:" .. objective.itemID)
        elseif objective.item then
            frame:SetAttribute("item", objective.item)
        end
    elseif (action == "kill" or action == "note") and objective and
        objective.target then
        frame:SetAttribute("type", "macro")
        frame:SetAttribute("macrotext", "/targetexact " .. objective.target)
    elseif action == "talk" and objective and objective.npc then
        frame:SetAttribute("type", "macro")
        frame:SetAttribute("macrotext", "/targetexact " .. objective.npc)
    end

    -- Custom click actions (non-secure)
    frame:SetScript("PostClick", function()
        if not objective then return end

        local withCoords = {
            walk = true,
            walkNote = true,
            kill = true,
            vendor = true,
            accept = true,
            turnin = true,
            ding = true,
            collect = true,
            fpath = true,
            obj = true
        }

        if withCoords[action] and type(objective.coords) == "table" then
            IronPath:DebugPrint("Setting Arrow to objective!")
            IronPath:GoToObjective(objective)
        elseif action == "confirm" then
            IronPath:DebugPrint("Confirm clicked!")
            objective.isComplete = true

            if objective.next then
                IronPath:DebugPrint("Jumping to step labeled: " ..
                                        tostring(objective.next))
                local target = GuideViewer._stepLabels and
                                   GuideViewer._stepLabels[objective.next]
                if target and target._labelIndex then
                    GuideViewer.currentStep = target._labelIndex
                else
                    IronPath:DebugPrint("Label not found: " ..
                                            tostring(objective.next), "warn")
                    GuideViewer:SkipToNextVisibleStep()
                end
            else
                GuideViewer:SkipToNextVisibleStep()
            end

            GuideViewer:ShowStep()
        elseif action == "popuptext" then
            IronPath:DebugPrint("TODO: POPUPTEXT: " ..
                                    tostring(objective.popuptext))
        end
    end)

    -- Checkbox
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
            UpdateColor()
            if objective then objective.isComplete = frame.checked end
        end)
    end

    if action == "blank" then frame:SetBackdropColor(0, 0, 0, 1) end

    -- Icon
    local icon = frame:CreateTexture(nil, "ARTWORK")
    icon:SetSize(16, 16)
    icon:SetAtlas(entry.icon or "VignetteKillElite")
    icon:SetPoint("TOPLEFT", checkBtn, "TOPRIGHT", 5, 3)

    -- Label
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

    -- Anchor and display
    frame:SetPoint("TOPLEFT", parent._lastObjectiveLine, "BOTTOMLEFT", 0, 0)
    parent._lastObjectiveLine = frame
    frame:Show()

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
GuideViewer.objectivesAnchor = CreateFrame("Frame", nil, GuideViewer,
                                           "BackdropTemplate")
GuideViewer.objectivesAnchor:SetSize(1, 1)
GuideViewer.objectivesAnchor:SetPoint("TOPLEFT", 0, 1)

-- Reset tracker for stacking
GuideViewer:ResetObjectiveLines()

GuideViewer:CreateObjectiveLine({
    type = "note",
    label = "|cffFFD700Welcome to IronPath!|r",
    isComplete = true,
    blankBox = true
})

GuideViewer:CreateObjectiveLine({
    type = "note",
    label = "This addon provides optimized step-by-step leveling guides.",
    isComplete = nil,
    blankBox = true
})

GuideViewer:CreateObjectiveLine({
    type = "tip",
    label = "Pick a guide from the dropdown menu to get started.",
    isComplete = nil,
    blankBox = true
})

GuideViewer:CreateObjectiveLine({
    type = "tip",
    label = "Objectives will appear here when you're on an active step.",
    isComplete = nil,
    blankBox = true
})

GuideViewer:CreateObjectiveLine({
    type = "tip",
    label = "Click |cff00BFFFUse|r objectives to use quest items directly.",
    isComplete = nil,
    blankBox = true
})

GuideViewer:CreateObjectiveLine({
    type = "tip",
    label = "Click |cffff4040Kill|r objectives to target enemies instantly.",
    isComplete = nil,
    blankBox = true
})

GuideViewer:CreateObjectiveLine({
    type = "tip",
    label = "Click |cff66ccffTalkTo|r objectives to target NPCs for interaction.",
    isComplete = nil,
    blankBox = true
})

GuideViewer:CreateObjectiveLine({
    type = "tip",
    label = "Completed objectives turn green when finished.",
    isComplete = nil,
    blankBox = true
})

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
function GuideViewer:CancelWalkPollers()
    if self.activeStep and self.activeStep.objectives then
        for _, obj in ipairs(self.activeStep.objectives) do
            if obj._walkPoller then
                obj._walkPoller:SetScript("OnUpdate", nil)
                obj._walkPoller:Hide()
                obj._walkPoller = nil
                IronPath:DebugPrint("walk: polling canceled", "walk")
            end
        end
    end
end
function GuideViewer:SkipToPreviousVisibleStep()
    self:CancelWalkPollers()
    local steps = _G.IronPath_CachedVisibleSteps or {}
    local index = self.currentStep - 1

    while index >= 1 do
        local step = steps[index]
        if step and (step._isVisible or IronPath.db.profile.showAllSteps) then
            self.currentStep = index
            self:ShowStep()
            return
        end
        index = index - 1
    end

    IronPath:Print("No previous visible step found.", "warn")
end

function GuideViewer:SkipToNextVisibleStep()
    self:CancelWalkPollers()
    local steps = _G.IronPath_CachedVisibleSteps or {}
    local index = self.currentStep + 1
    local totalSteps = #steps

    while index <= totalSteps do
        local step = steps[index]
        if step and (step._isVisible or IronPath.db.profile.showAllSteps) then
            self.currentStep = index
            self:ShowStep()
            return
        end
        index = index + 1
    end

    IronPath:Print("No next visible step found.", "warn")
end

-- ============================================================
-- Navigation Buttons – Prev / Next
-- ============================================================
NavBar.nextBtn:SetScript("OnClick", function()
    if InCombatLockdown() then
        IronPath:Print("Cannot skip steps during combat.", "warn")
        return
    end
    GuideViewer:SkipToNextVisibleStep()
    IronPath:DebugPrint("Next step: " .. GuideViewer.currentStep, "info")
end)

NavBar.prevBtn:SetScript("OnClick", function()
    if InCombatLockdown() then
        IronPath:Print("Cannot skip steps during combat.", "warn")
        return
    end
    GuideViewer:SkipToPreviousVisibleStep()
    IronPath:DebugPrint("Previous step: " .. GuideViewer.currentStep, "info")
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
        local done = {}

        -- First: Print numeric keys in order
        for i = 1, #t do
            local v = t[i]
            str = str .. string.rep("  ", indent)
            if type(v) == "table" then
                str = str .. "{\n" .. TableToString(v, indent + 1)
                str = str .. string.rep("  ", indent) .. "},\n"
            elseif type(v) == "string" then
                str = str .. "\"" .. v .. "\",\n"
            else
                str = str .. tostring(v) .. ",\n"
            end
            done[i] = true
        end

        -- Second: Print all other keys (like "condition")
        for k, v in pairs(t) do
            if not done[k] then
                str = str .. string.rep("  ", indent)
                if type(k) == "string" then
                    str = str .. k .. " = "
                end
                if type(v) == "table" then
                    str = str .. "{\n" .. TableToString(v, indent + 1)
                    str = str .. string.rep("  ", indent) .. "},\n"
                elseif type(v) == "string" then
                    str = str .. "\"" .. v .. "\",\n"
                else
                    str = str .. tostring(v) .. ",\n"
                end
            end
        end

        return str
    end

    -- Always format as a list for output, even for 1 step
    local toDisplay = parsed
    if type(parsed) == "table" and not parsed[1] then toDisplay = {parsed} end

    outputBox:SetText(TableToString(toDisplay))
end)

-- Copy Button
local copyButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
copyButton:SetSize(100, 24)
copyButton:SetText("Copy")
copyButton:SetPoint("LEFT", parseButton, "RIGHT", 10, 0)

copyButton:SetScript("OnClick", function()
    outputBox:HighlightText()
    outputBox:SetFocus()
    C_Timer.After(0.1, function()
        outputBox:ClearFocus()
        print("Output copied to clipboard. Press Ctrl+C.")
    end)
end)

-- Slash command
SLASH_IRONPATHPARSER1 = "/parse"
SlashCmdList["IRONPATHPARSER"] = function()
    frame:SetFrameStrata("DIALOG")
    frame:SetFrameLevel(99)
    frame:SetShown(not frame:IsShown())
end

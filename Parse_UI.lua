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

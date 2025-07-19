-- ================================================================
-- IronPath_Arrow.lua – Waypoint Arrow & Pin System (Ace3 Style)
-- ================================================================

local IronPath = _G.IronPath
local addonName = "IronPath"
local HBD       = LibStub("HereBeDragons-2.0")
local HBDPins   = LibStub("HereBeDragons-Pins-2.0")

-- Internal state
local arrowFrame, worldPin, miniPin
local currentX, currentY = nil, nil

-- ------------------------------------------------
-- Create Arrow Frame
-- ------------------------------------------------
function IronPath:CreateArrowFrame()
    if arrowFrame then return end

    arrowFrame = CreateFrame("Frame", addonName .. "_ArrowFrame", UIParent)
    arrowFrame:SetSize(48, 48)
    arrowFrame:SetPoint("BOTTOM", IronPathFrame, "TOP", 0, 10)
    arrowFrame:SetFrameStrata("FULLSCREEN_DIALOG")
    arrowFrame:SetAlpha(1)
    arrowFrame:Hide()

    local arrow = arrowFrame:CreateTexture(nil, "ARTWORK")
    arrow:SetTexture("Interface\\WorldMap\\WorldMapArrow")
    arrow:SetAllPoints(true)

    arrowFrame.arrow = arrow
    arrowFrame.orientation = 0
    arrowFrame.forceUpdate = true
end

-- ------------------------------------------------
-- Create Pins
-- ------------------------------------------------
function IronPath:CreatePins()
    if not worldPin then
        worldPin = CreateFrame("Frame", nil, UIParent)
        worldPin:SetSize(8, 8)
        local icon = worldPin:CreateTexture(nil, "OVERLAY")
        icon:SetTexture("Interface\\BUTTONS\\WHITE8X8")
        icon:SetVertexColor(0, 1, 0, 1)
        icon:SetAllPoints()
    end

    if not miniPin then
        miniPin = CreateFrame("Frame", nil, UIParent)
        miniPin:SetSize(8, 8)
        local icon = miniPin:CreateTexture(nil, "OVERLAY")
        icon:SetTexture("Interface\\BUTTONS\\WHITE8X8")
        icon:SetVertexColor(0, 1, 0, 1)
        icon:SetAllPoints()
    end
end

-- ------------------------------------------------
-- Arrow Update Loop
-- ------------------------------------------------
function IronPath:OnArrowUpdate()
    if not currentX or not currentY then
        arrowFrame:Hide()
        HBDPins:RemoveAllWorldMapIcons(addonName)
        HBDPins:RemoveAllMinimapIcons(addonName)
        return
    end

    local px, py, instance = HBD:GetPlayerWorldPosition()
    if not px or not py then return end

    local mapID = C_Map.GetBestMapForUnit("player")
    if not mapID then return end

    local zx, zy = currentX / 100, currentY / 100
    local tx, ty, targetInstance = HBD:GetWorldCoordinatesFromZone(zx, zy, mapID)
    if not tx or not ty or instance ~= targetInstance then
        arrowFrame:Hide()
        HBDPins:RemoveAllWorldMapIcons(addonName)
        HBDPins:RemoveAllMinimapIcons(addonName)
        return
    end

    local angle = HBD:GetWorldVector(instance, px, py, tx, ty)
    if not angle then return end

    local facing = GetPlayerFacing() or 0
    local orientation = angle - facing

    if math.abs(orientation - arrowFrame.orientation) > math.pi / 64 or arrowFrame.forceUpdate then
        arrowFrame.arrow:SetRotation(orientation)
        arrowFrame.orientation = orientation
        arrowFrame.forceUpdate = false
    end

    HBDPins:RemoveAllWorldMapIcons(addonName)
    HBDPins:RemoveAllMinimapIcons(addonName)
    HBDPins:AddWorldMapIconWorld(addonName, worldPin, targetInstance, tx, ty, HBD_PINS_WORLDMAP_SHOW_WORLD)
    HBDPins:AddMinimapIconWorld(addonName, miniPin, targetInstance, tx, ty, true)
end

-- ------------------------------------------------
-- Public: GoTo(x, y)
-- ------------------------------------------------
function IronPath:GoTo(x, y)
    if type(x) ~= "number" or type(y) ~= "number" then
        currentX, currentY = nil, nil
        if arrowFrame then arrowFrame:Hide() end
        HBDPins:RemoveAllWorldMapIcons(addonName)
        HBDPins:RemoveAllMinimapIcons(addonName)
        return
    end

    currentX, currentY = x, y
    self:CreateArrowFrame()
    self:CreatePins()
    arrowFrame:SetScript("OnUpdate", function() self:OnArrowUpdate() end)
    arrowFrame:Show()
    arrowFrame.forceUpdate = true
end

-- ------------------------------------------------
-- World Map Integration
-- ------------------------------------------------
WorldMapFrame:HookScript("OnShow", function()
    if arrowFrame and arrowFrame:IsShown() then
        arrowFrame:Hide()
        arrowFrame.wasVisible = true
    end
end)

WorldMapFrame:HookScript("OnHide", function()
    if arrowFrame and arrowFrame.wasVisible then
        arrowFrame:Show()
        arrowFrame.wasVisible = nil
    end
end)

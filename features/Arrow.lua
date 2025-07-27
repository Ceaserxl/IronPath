-- ================================================================
-- Arrow.lua – Logic Only (Points Arrow to Coordinates + Pins)
-- ================================================================
local IronPath = _G.IronPath
local addonName = "IronPath"
local GuideViewer = _G.IronPathViewer
local HBD = LibStub("HereBeDragons-2.0")
local HBDPins = LibStub("HereBeDragons-Pins-2.0")

local currentX, currentY = nil, nil
local worldPin, miniPin = nil, nil

------------------------------------------------------------
-- Get Map ID from Zone Name
------------------------------------------------------------
function IronPath:GetMapIDFromZoneName(zoneName)
    for id, data in pairs(HBD.mapData) do
        if data.name == zoneName then return id end
    end
    return nil
end

------------------------------------------------------------
-- Create Map + Minimap Pins
------------------------------------------------------------
function IronPath:CreatePins()
    if not worldPin then
        worldPin = CreateFrame("Frame", nil, UIParent)
        worldPin:SetSize(16, 16)
        local icon = worldPin:CreateTexture(nil, "OVERLAY")
        icon:SetAtlas("Target")
        icon:SetAllPoints()
        worldPin:SetScript("OnEnter", function()
            GameTooltip:SetOwner(worldPin, "ANCHOR_RIGHT")
            GameTooltip:SetText("IronPath World Pin", 1, 1, 1)
            GameTooltip:Show()
        end)
        worldPin:SetScript("OnLeave", GameTooltip_Hide)
    end

    if not miniPin then
        miniPin = CreateFrame("Frame", nil, UIParent)
        miniPin:SetSize(16, 16)
        local icon = miniPin:CreateTexture(nil, "OVERLAY")
        icon:SetAtlas("Target")
        icon:SetAllPoints()
        miniPin:SetScript("OnEnter", function()
            GameTooltip:SetOwner(miniPin, "ANCHOR_RIGHT")
            GameTooltip:SetText("IronPath Minimap Pin", 1, 1, 1)
            GameTooltip:Show()
        end)
        miniPin:SetScript("OnLeave", GameTooltip_Hide)
    end
end

------------------------------------------------------------
-- Set Arrow to Coordinates
------------------------------------------------------------
function IronPath:GoToCoords(x, y, zone)
    if not x or not y then return end

    local mapID = zone and self:GetMapIDFromZoneName(zone)
    if not mapID then
        mapID = C_Map.GetBestMapForUnit("player")
        if not mapID then return end
    end

    self:CreateArrowFrame()
    local frame = self.arrowFrame
    if not frame then return end

    currentX, currentY = x, y
    frame:SetScript("OnUpdate", function() self:OnArrowUpdate(mapID) end)
    frame:Show()
    frame.forceUpdate = true
end

------------------------------------------------------------
-- Set Arrow to Objective
------------------------------------------------------------
function IronPath:GoToObjective(obj)
    if not obj or obj.isComplete or not obj.coords then
        self:ClearArrow()
        return
    end
    self:GoToCoords(obj.coords.x, obj.coords.y, obj.coords.zone)
end

------------------------------------------------------------
-- Arrow Frame Updater
------------------------------------------------------------
function IronPath:OnArrowUpdate(mapID)
    local frame = self.arrowFrame
    if not frame or not currentX or not currentY then
        if frame then
            frame:Hide()
            HBDPins:RemoveAllWorldMapIcons("IronPathObjective")
            HBDPins:RemoveAllMinimapIcons("IronPathObjective")
        end
        return
    end

    local px, py, instance = HBD:GetPlayerWorldPosition()
    if not px or not py then return end

    local zx, zy = currentX / 100, currentY / 100
    self:CreatePins()

    HBDPins:RemoveAllWorldMapIcons("IronPathObjective")
    HBDPins:RemoveAllMinimapIcons("IronPathObjective")

    HBDPins:AddWorldMapIconMap("IronPathObjective", worldPin, mapID, zx, zy,
                               HBD_PINS_WORLDMAP_SHOW_WORLD)
    HBDPins:AddMinimapIconMap("IronPathObjective", miniPin, mapID, zx, zy, true)

    local tx, ty, targetInstance =
        HBD:GetWorldCoordinatesFromZone(zx, zy, mapID)
    if not tx or not ty or instance ~= targetInstance then
        frame:Hide()
        return
    end

    local angle = HBD:GetWorldVector(instance, px, py, tx, ty)
    if angle then
        local facing = GetPlayerFacing() or 0
        local orientation = angle - facing
        if math.abs(orientation - frame.orientation) > math.pi / 64 or
            frame.forceUpdate then
            frame.arrow:SetRotation(orientation)
            frame.orientation = orientation
            frame.forceUpdate = false
        end
    end

    local dx, dy = tx - px, ty - py
    local dist = math.sqrt(dx * dx + dy * dy)
    frame.distanceText:SetText(string.format("%.0f yds", dist))
end

------------------------------------------------------------
-- Clear Arrow
------------------------------------------------------------
function IronPath:ClearArrow()
    currentX, currentY = nil, nil
    local frame = self.arrowFrame
    if frame then
        frame:SetScript("OnUpdate", nil)
        frame:Hide()
    end
end


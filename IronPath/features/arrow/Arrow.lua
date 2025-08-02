-- ================================================================
-- Arrow.lua – Handles Arrow Navigation and Minimap/World Map Pins
-- ================================================================
local IronPath = _G.IronPath
local GuideViewer = _G.IronPathViewer
local addonName = "IronPath"

local HBD = LibStub("HereBeDragons-2.0")
local HBDPins = LibStub("HereBeDragons-Pins-2.0")

local currentX, currentY = nil, nil
local minimapPins = {}

------------------------------------------------------------
-- Get Map ID from Zone Name
------------------------------------------------------------
function IronPath:GetMapIDFromZoneName(zoneName)
    for id, data in pairs(HBD.mapData) do
        if data.name == zoneName then
            return id
        end
    end
    return nil
end

------------------------------------------------------------
-- Minimap Pin Handling
------------------------------------------------------------
function IronPath:ClearMinimapPins()
    for _, pin in ipairs(minimapPins) do
        HBDPins:RemoveMinimapIcon(addonName, pin)
        pin:Hide()
    end
    wipe(minimapPins)
end

function IronPath:PlaceMinimapPinsForObjectives(objectives)
    self:ClearMinimapPins()
    if not objectives then return end

    for _, obj in ipairs(objectives) do
        if obj.coords and obj.coords.x and obj.coords.y then
            local zone = obj.coords.zone or "unknown"
            local mapID = self:GetMapIDFromZoneName(zone) or C_Map.GetBestMapForUnit("player")

            if mapID then
                local zx, zy = obj.coords.x / 100, obj.coords.y / 100

                local pin = CreateFrame("Frame", nil, Minimap)
                pin:SetSize(14, 14)
                local icon = pin:CreateTexture(nil, "OVERLAY")
                icon:SetAtlas("Target")
                icon:SetAllPoints()
                pin:SetScript("OnEnter", function()
                    GameTooltip:SetOwner(pin, "ANCHOR_RIGHT")
                    GameTooltip:SetText(obj.label or "Objective", 1, 1, 1)
                    GameTooltip:Show()
                end)
                pin:SetScript("OnLeave", GameTooltip_Hide)

                HBDPins:AddMinimapIconMap(addonName, pin, mapID, zx, zy, 128)
                table.insert(minimapPins, pin)
            end
        end
    end
end

------------------------------------------------------------
-- Arrow Navigation to Coordinates
------------------------------------------------------------
function IronPath:GoToCoords(x, y, zone)
    if not x or not y then return end

    local mapID = zone and self:GetMapIDFromZoneName(zone)
    if not mapID then
        mapID = C_Map.GetBestMapForUnit("player")
        if not mapID then return end
    end

    local zx, zy = x / 100, y / 100
    local tx, ty, targetInstance = HBD:GetWorldCoordinatesFromZone(zx, zy, mapID)
    local px, py, playerInstance = HBD:GetPlayerWorldPosition()

    if not tx or not ty or not playerInstance or not targetInstance then return end

    if targetInstance ~= playerInstance then
        local name = ({ [0] = "Eastern Kingdoms", [1] = "Kalimdor" })[targetInstance]
        print("|cffff4444[IronPath]|r Skipping arrow: Target is in " .. (name or ("MapID " .. targetInstance)))
        self:ClearArrow()
        return
    end

    self:CreateArrowFrame()
    local frame = self.arrowFrame
    if not frame then return end

    currentX, currentY = x, y
    frame:SetScript("OnUpdate", function() self:OnArrowUpdate(mapID) end)
    frame:Show()
    frame.forceUpdate = true
end

function IronPath:GoToObjective(obj)
    if not obj or obj.isComplete or not obj.coords then
        self:ClearArrow()
        return
    end
    self:GoToCoords(obj.coords.x, obj.coords.y, obj.coords.zone)
end

------------------------------------------------------------
-- Arrow Frame Update Logic
------------------------------------------------------------
function IronPath:OnArrowUpdate(mapID)
    local frame = self.arrowFrame
    if not frame or not currentX or not currentY then
        if frame then frame:Hide() end
        return
    end

    local px, py, instance = HBD:GetPlayerWorldPosition()
    if not px or not py then return end

    local zx, zy = currentX / 100, currentY / 100
    local tx, ty, targetInstance = HBD:GetWorldCoordinatesFromZone(zx, zy, mapID)
    if not tx or not ty or instance ~= targetInstance then
        frame:Hide()
        return
    end

    local angle = HBD:GetWorldVector(instance, px, py, tx, ty)
    if angle then
        local facing = GetPlayerFacing() or 0
        local orientation = angle - facing
        if math.abs(orientation - frame.orientation) > math.pi / 64 or frame.forceUpdate then
            frame.arrow:SetRotation(orientation)
            frame.orientation = orientation
            frame.forceUpdate = false
        end
    end

    local dx, dy = tx - px, ty - py
    local dist = math.sqrt(dx * dx + dy * dy)
    frame.distanceText:SetText(string.format("%.0f yds", dist))
end

function IronPath:ClearArrow()
    currentX, currentY = nil, nil
    local frame = self.arrowFrame
    if frame then
        frame:SetScript("OnUpdate", nil)
        frame:Hide()
    end
end

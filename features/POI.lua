-- ================================================================
-- POI.lua – Handles World Map Pin Placement using HereBeDragons
-- ================================================================
local IronPath = _G.IronPath
local GuideViewer = _G.IronPathViewer
local HBD = LibStub("HereBeDragons-2.0")

-- ----------------------------------------------------------------
-- World Map Pin Mixin
-- ----------------------------------------------------------------
IronPathPinMixin = CreateFromMixins(MapCanvasPinMixin)

function IronPathPinMixin:OnLoad()
    self:SetSize(20, 20)
    self:SetFrameStrata("HIGH")
    self:SetFrameLevel(10000)

    local icon = self:CreateTexture(nil, "OVERLAY")
    icon:SetAtlas("ShipMissionIcon-Legendary-MapBadge")
    icon:SetAllPoints()

    self:EnableMouse(true)
    self:SetMouseClickEnabled(false)
    self:SetScript("OnEnter", self.OnEnter)
    self:SetScript("OnLeave", self.OnLeave)
end

function IronPathPinMixin:OnAcquired(data)
    local zone = data.zone or "unknown"
    local x = tonumber(data.x)
    local y = tonumber(data.y)

    if x and x > 1 then x = x / 100 end
    if y and y > 1 then y = y / 100 end

    local currentMap = self:GetMap()
    local currentMapID = currentMap and currentMap:GetMapID()

    if tonumber(zone) ~= currentMapID then
        return
    end

    if x and y then
        self:SetPosition(x, y)
    end

    self.tooltipText = data.label or "IronPath Objective"
end

function IronPathPinMixin:OnEnter()
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    GameTooltip:SetText(self.tooltipText, 1, 1, 1)
    GameTooltip:Show()
end

function IronPathPinMixin:OnLeave()
    GameTooltip_Hide()
end

-- ----------------------------------------------------------------
-- MapCanvas Data Provider
-- ----------------------------------------------------------------
local IronPathPinProvider = CreateFromMixins(MapCanvasDataProviderMixin)

function IronPathPinProvider:OnAdded(mapCanvas)
    self.mapCanvas = mapCanvas
end

function IronPathPinProvider:OnRemoved()
    self.mapCanvas = nil
end

function IronPathPinProvider:RemoveAllData()
    self.mapCanvas:RemoveAllPinsByTemplate("IronPathPinTemplate")
end

function IronPathPinProvider:RefreshAllData()
    self:RemoveAllData()

    local step = IronPath_CurrentStep
    if not step or not step.objectives then
        return
    end

    for i, obj in ipairs(step.objectives) do
        if obj.coords and obj.coords.x and obj.coords.y then
            local zone = obj.coords.zone or C_Map.GetBestMapForUnit("player")
            local mapID = type(zone) == "number" and zone or IronPath:GetMapIDFromZoneName(zone)
            local currentMapID = self.mapCanvas:GetMapID()

            local label = obj.label or ("Objective #" .. i)

            if mapID and obj.coords.x and obj.coords.y then
                local x = obj.coords.x > 1 and obj.coords.x / 100 or obj.coords.x
                local y = obj.coords.y > 1 and obj.coords.y / 100 or obj.coords.y

                local levels = {}
                table.insert(levels, mapID)

                local parentID = mapID
                for _ = 1, 5 do
                    local mapInfo = C_Map.GetMapInfo(parentID)
                    if mapInfo and mapInfo.parentMapID and mapInfo.parentMapID ~= 0 then
                        parentID = mapInfo.parentMapID
                        table.insert(levels, parentID)
                    else
                        break
                    end
                end

                -- Convert original zone coords to world coords
                local wx, wy = HBD:GetWorldCoordinatesFromZone(x, y, mapID)

                if wx and wy then
                    for _, id in ipairs(levels) do
                        local tx, ty = HBD:GetZoneCoordinatesFromWorld(wx, wy, id)
                        local mapInfo = C_Map.GetMapInfo(id)
                        local mapName = mapInfo and mapInfo.name or "unknown"

                        if tx and ty then
                            if id == currentMapID then
                                self.mapCanvas:AcquirePin("IronPathPinTemplate", {
                                    x = tx,
                                    y = ty,
                                    label = label,
                                    zone = id
                                })
                            end
                        end
                    end
                end
            end
        end
    end
end

WorldMapFrame:AddDataProvider(IronPathPinProvider)

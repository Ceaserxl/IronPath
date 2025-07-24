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

function IronPath:CreateArrowFrame()
    if arrowFrame then return end

    arrowFrame = CreateFrame("Frame", addonName .. "_ArrowFrame", IronPathNavBar)
    arrowFrame:SetSize(90, 90)
    arrowFrame:SetPoint("BOTTOM", IronPathNavBar, "TOP", 0, 0)
    arrowFrame:SetAlpha(1)
    arrowFrame:Hide()

    local bg = arrowFrame:CreateTexture(nil, "BACKGROUND")
    bg:SetAtlas("NavalMap-SmallBonusCircle")
    bg:SetSize(64, 64)
    bg:SetPoint("CENTER")

    local arrow = arrowFrame:CreateTexture(nil, "ARTWORK")
    arrow:SetTexture("Interface\\WorldMap\\WorldMapArrow")
    arrow:SetSize(40, 40)
    arrow:SetPoint("CENTER")

    local distanceFrame = CreateFrame("Frame", nil, arrowFrame)
    distanceFrame:SetSize(90, 25)
    distanceFrame:SetPoint("TOP", arrowFrame, "BOTTOM", 0, 20)
    distanceFrame:Show()

    local dbg = distanceFrame:CreateTexture(nil, "BACKGROUND")
    dbg:SetAtlas("UI-Frame-Neutral-Ribbon", true)
    dbg:SetSize(128, 32)
    dbg:SetPoint("CENTER")

    local text = distanceFrame:CreateFontString(nil, "OVERLAY")
    text:SetFont("Fonts\\2002.TTF", 14, "")
    text:SetPoint("TOP", distanceFrame, "BOTTOM", 0, 20)
    text:SetTextColor(0, 0, 0)
    text:SetText("")

    arrowFrame.arrow = arrow
    arrowFrame.distanceText = text
    arrowFrame.orientation = 0
    arrowFrame.forceUpdate = true
end

function IronPath:CreatePins()
    if not worldPin then
        worldPin = CreateFrame("Frame", nil, UIParent)
        worldPin:SetSize(16, 16)
        local icon = worldPin:CreateTexture(nil, "OVERLAY")
        icon:SetAtlas("Target")
        icon:SetAllPoints()
        worldPin:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            GameTooltip:SetText("IronPath Pin", 1, 1, 1)
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
        miniPin:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            GameTooltip:SetText("IronPath Pin", 1, 1, 1)
            GameTooltip:Show()
        end)
        miniPin:SetScript("OnLeave", GameTooltip_Hide)
    end
end

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

    local dx, dy = tx - px, ty - py
    local dist = math.sqrt(dx * dx + dy * dy)
    arrowFrame.distanceText:SetText(string.format("%.0f yds", dist))

    HBDPins:RemoveAllWorldMapIcons(addonName)
    HBDPins:RemoveAllMinimapIcons(addonName)
    HBDPins:AddWorldMapIconWorld(addonName, worldPin, targetInstance, tx, ty, HBD_PINS_WORLDMAP_SHOW_WORLD)
    HBDPins:AddMinimapIconWorld(addonName, miniPin, targetInstance, tx, ty, true)
end

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

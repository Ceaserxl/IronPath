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

    -- Main frame styled with atlas background
    arrowFrame = CreateFrame("Frame", addonName .. "_ArrowFrame", UIParent)
    arrowFrame:SetSize(90, 90) -- match size of the atlas
    arrowFrame:SetPoint("BOTTOM", IronPathNavBar, "TOP", 0, 0)
    arrowFrame:SetFrameStrata("FULLSCREEN_DIALOG")
    arrowFrame:SetAlpha(1)
    arrowFrame:Hide()

    -- Background atlas frame
    local bg = arrowFrame:CreateTexture(nil, "BACKGROUND")
    bg:SetAllPoints()
    if C_Texture.GetAtlasInfo("ChallengeMode-SpikeyStar") then
        bg:SetAtlas("ChallengeMode-SpikeyStar", true)
    else
        bg:SetColorTexture(0.2, 0.2, 0.2, 0.8)
    end

    distanceFrame = CreateFrame("Frame", nil, arrowFrame)
    distanceFrame:SetSize(90, 20)
    distanceFrame:SetPoint("TOP", arrowFrame, "BOTTOM", 0, 20)
    distanceFrame:SetFrameStrata("FULLSCREEN_DIALOG")
    distanceFrame:SetAlpha(1)
    distanceFrame:Show()

    local dbg = distanceFrame:CreateTexture(nil, "BACKGROUND")
    dbg:SetAllPoints()
    dbg:SetAtlas("ChallengeMode-Timer", true)

    -- Arrow texture inside the ring
    local arrow = arrowFrame:CreateTexture(nil, "ARTWORK")
    arrow:SetTexture("Interface\\WorldMap\\WorldMapArrow")
    arrow:SetSize(40, 40)
    arrow:SetPoint("CENTER", arrowFrame, "CENTER", 0, 0)

    -- Distance text just below the frame
    local text = distanceFrame:CreateFontString(nil, "OVERLAY", "GameFontWhiteSmall")
    text:SetPoint("TOP", distanceFrame, "BOTTOM", 0, 15)
    text:SetTextColor(1, 1, 1)
    text:SetText("")

    -- Store references
    arrowFrame.arrow = arrow
    arrowFrame.distanceText = text
    arrowFrame.orientation = 0
    arrowFrame.forceUpdate = true
end


-- ------------------------------------------------
-- Create Pins
-- ------------------------------------------------
function IronPath:CreatePins()
    if not worldPin then
        worldPin = CreateFrame("Frame", nil, UIParent)
        worldPin:SetSize(16, 16)
        local icon = worldPin:CreateTexture(nil, "OVERLAY")
        icon:SetAtlas("Target") -- Use atlas texture here
        icon:SetAllPoints()
        -- World Pin Tooltip
        worldPin:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            GameTooltip:SetText("IronPath Pin", 1, 1, 1)
            GameTooltip:Show()
        end)
        worldPin:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)
    end

    if not miniPin then
        miniPin = CreateFrame("Frame", nil, UIParent)
        miniPin:SetSize(16, 16)
        local icon = miniPin:CreateTexture(nil, "OVERLAY")
        icon:SetAtlas("Target") -- Use atlas texture here too
        icon:SetAllPoints()
        -- Mini Pin Tooltip
        miniPin:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            GameTooltip:SetText("IronPath Pin", 1, 1, 1)
            GameTooltip:Show()
        end)
        miniPin:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)
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

    local dx, dy = tx - px, ty - py
    local dist = math.sqrt(dx * dx + dy * dy)
    if arrowFrame.distanceText then
        arrowFrame.distanceText:SetText(string.format("%.0f yds", dist))
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

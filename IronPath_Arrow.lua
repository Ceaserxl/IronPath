function IronPath_CreateArrow()
    if IronPathArrowFrame then return end

    local HBD = LibStub("HereBeDragons-2.0")
    local HBDPins = LibStub("HereBeDragons-Pins-2.0")

    local frame = CreateFrame("Frame", "IronPathArrowFrame", UIParent)
    frame:SetSize(48, 48)
    frame:SetPoint("BOTTOM", IronPathFrame, "TOP", 0, 10)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:SetClampedToScreen(true)

    local tex = frame:CreateTexture(nil, "ARTWORK")
    tex:SetTexture("Interface\\WorldMap\\WorldMapArrow")
    tex:SetAllPoints(true)
    frame.arrow = tex

    frame:SetFrameStrata("FULLSCREEN_DIALOG")
    frame:SetAlpha(1)
    frame:Hide()

    frame.orientation = 0
    frame.forceUpdate = true

    -- create SEPARATE pins for world map and minimap
    if not IronPathWorldPin then
        IronPathWorldPin = CreateFrame("Frame", nil, UIParent)
        IronPathWorldPin:SetSize(8, 8)
        local icon = IronPathWorldPin:CreateTexture(nil, "OVERLAY")
        icon:SetTexture("Interface\\BUTTONS\\WHITE8X8")
        icon:SetAllPoints(true)
        icon:SetVertexColor(0, 1, 0, 1) -- solid green
        IronPathWorldPin.icon = icon
    end

    if not IronPathMiniPin then
        IronPathMiniPin = CreateFrame("Frame", nil, UIParent)
        IronPathMiniPin:SetSize(8, 8)
        local icon = IronPathMiniPin:CreateTexture(nil, "OVERLAY")
        icon:SetTexture("Interface\\BUTTONS\\WHITE8X8")
        icon:SetAllPoints(true)
        icon:SetVertexColor(0, 1, 0, 1) -- solid green
        IronPathMiniPin.icon = icon
    end

    frame:SetScript("OnUpdate", function(self)
        if not self.stepCoords then
            HBDPins:RemoveAllWorldMapIcons("IronPath")
            HBDPins:RemoveAllMinimapIcons("IronPath")
            return
        end

        local wx, wy, instance = HBD:GetPlayerWorldPosition()
        if not wx or not wy then return end

        local mapID = C_Map.GetBestMapForUnit("player")
        if not mapID then return end

        local tx, ty = self.stepCoords[1]/100, self.stepCoords[2]/100
        local twx, twy, targetInstance = HBD:GetWorldCoordinatesFromZone(tx, ty, mapID)
        if not twx or not twy then return end

        if instance ~= targetInstance then
            self:Hide()
            HBDPins:RemoveAllWorldMapIcons("IronPath")
            HBDPins:RemoveAllMinimapIcons("IronPath")
            return
        end

        local angle, dist = HBD:GetWorldVector(instance, wx, wy, twx, twy)
        if not angle then return end

        local facing = GetPlayerFacing() or 0
        local orientation = angle - facing

        if math.abs(orientation - self.orientation) > math.pi/64 or self.forceUpdate then
            self.arrow:SetRotation(orientation)
            self.orientation = orientation
            self.forceUpdate = false
        end

        -- place pins
        HBDPins:RemoveAllWorldMapIcons("IronPath")
        HBDPins:RemoveAllMinimapIcons("IronPath")

        HBDPins:AddWorldMapIconWorld("IronPath", IronPathWorldPin, targetInstance, twx, twy, HBD_PINS_WORLDMAP_SHOW_WORLD)
        HBDPins:AddMinimapIconWorld("IronPath", IronPathMiniPin, targetInstance, twx, twy, true)
    end)

    _G.IronPathArrowFrame = frame

    -- hide arrow when world map is open
    hooksecurefunc(WorldMapFrame, "OnShow", function()
        if IronPathArrowFrame then
            IronPathArrowFrame:Hide()
        end
    end)

    hooksecurefunc(WorldMapFrame, "OnHide", function()
        if IronPathArrowFrame and IronPathArrowFrame.stepCoords then
            IronPathArrowFrame:Show()
        end
    end)

    print("IronPath arrow with HBD world + minimap pins created")
end

-- hide the arrow when the world map is open
WorldMapFrame:HookScript("OnShow", function()
    if IronPathArrowFrame and IronPathArrowFrame:IsShown() then
        IronPathArrowFrame:Hide()
        IronPathArrowFrame.wasVisible = true
    end
end)

WorldMapFrame:HookScript("OnHide", function()
    if IronPathArrowFrame and IronPathArrowFrame.wasVisible then
        IronPathArrowFrame:Show()
        IronPathArrowFrame.wasVisible = nil
    end
end)

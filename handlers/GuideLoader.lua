-- ============================================================
-- GuideLoader.lua – Loads guide data and updates the viewer
-- ============================================================
local GuideLoader = {}
local IronPath = _G.IronPath
local GuideViewer = _G.IronPathViewer
_G.IronPath.GuideLoader = GuideLoader

-- Load a guide table, parse steps, and update UI
function GuideLoader:LoadGuide(guideTable)
    if not guideTable or not guideTable.steps then
        IronPath:DebugPrint("No valid guide data.", "error")
        return false
    end

    local stepBlock = guideTable.steps[1]
    local parsedSteps = IronPath.Parser:ParseSteps(stepBlock)

    if not parsedSteps or #parsedSteps == 0 then
        IronPath:DebugPrint("Failed to parse guide steps.", "error")
        return false
    end

    guideTable._parsed = parsedSteps
    IronPath_CurrentGuide = guideTable

    -- Set footer title and step count
    if IronPathFooter and IronPathFooter.guideTitle then
        local name = guideTable.easyName or "Unnamed Guide"
        local author = guideTable.author or "Unknown"
        IronPathFooter.guideTitle:SetText(name .. " by " .. author)
    end

    if IronPathViewer then
        IronPathViewer.currentStep = IronPath.db.char.lastStep or 1
        IronPathViewer:ShowStep()
    end

    IronPath:DebugPrint(
        "Loaded guide: " .. (guideTable.easyName or "Unnamed") .. " with " ..
            #parsedSteps .. " steps.", "success")
    return true
end

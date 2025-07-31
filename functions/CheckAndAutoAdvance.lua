-- CheckAndAutoAdvance.lua
local GuideViewer = _G.IronPathViewer
function GuideViewer:CheckAndAutoAdvance(step)
    print("CheckAndAutoAdvance: Fired")
    -- Throttle: prevent rapid re-entry during loading
    GuideViewer._lastAutoAdvance = GuideViewer._lastAutoAdvance or 0
    local now = GetTime()
    if now - GuideViewer._lastAutoAdvance < 1 then
        IronPath:DebugPrint("CheckAndAutoAdvance: Skipped due to throttle.", "advance")
        return
    end
    GuideViewer._lastAutoAdvance = now

    if not step or not step.objectives then
        IronPath:DebugPrint("CheckAndAutoAdvance: Step or objectives missing.", "advance")
        return
    end

    local allComplete = true
    local ignoredTypes = {
        tip = true,
        note = true,
        walk = true,
        title = true,
        talk = true,
        killNote = true,
        click = true,
        gossip = true,
        popuptext = true,
        use = true,
        walkNote = true
    }

    for index, obj in ipairs(step.objectives) do
        if obj._isSticky then
            IronPath:DebugPrint("Skipping sticky objective at index " .. index, "advance")
        elseif not obj.isComplete and not ignoredTypes[obj.type] then
            IronPath:DebugPrint("Objective[" .. index .. "] type=" .. tostring(obj.type) .. " not complete.", "advance")
            allComplete = false
            break
        end
    end

    if not allComplete then
        IronPath:DebugPrint("❌ Step not complete. No auto-advance triggered.", "advance")
        return
    end

    step._wasComplete = true
    IronPath:DebugPrint("✅ All actionable objectives complete. Step marked complete.", "advance")

    if not IronPath.db or not IronPath.db.profile then
        IronPath:DebugPrint("Profile or autoAdvanceStep setting not found.", "error")
        return
    end

    if not IronPath.db.profile.autoAdvanceStep then
        IronPath:DebugPrint("Auto-advance is disabled in settings.", "advance")
        return
    end

    if GuideViewer.currentStep ~= GuideViewer.highestUnlockedStep then
        IronPath:DebugPrint("Auto-advance conditions not met (not at last unlocked step).", "advance")
        return
    end

    local oldStep = GuideViewer.currentStep or 1
    GuideViewer:SkipToNextVisibleStep()
    IronPath:DebugPrint("➡️ Auto-advanced from step " .. oldStep .. " to " .. GuideViewer.currentStep, "advance")
end

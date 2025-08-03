-- CheckAndAutoAdvance.lua
local GuideViewer = _G.IronPathViewer
local debounceTimer

function GuideViewer:CheckAndAutoAdvance(step)
    -- Cancel any scheduled run and schedule a new one
    if debounceTimer then
        debounceTimer:Cancel()
    end

    debounceTimer = C_Timer.NewTimer(0.25, function()
        GuideViewer:_RunAutoAdvance(step)
    end)
end

function GuideViewer:_RunAutoAdvance(step)
    IronPath:DebugPrint("🔁 CheckAndAutoAdvance: Running debounced check", "advance")

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
        walkNote = true,
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

    if not IronPath.db or not IronPath.db.profile or not IronPath.db.profile.autoAdvanceStep then
        IronPath:DebugPrint("Auto-advance is disabled or profile missing.", "advance")
        return
    end

    if GuideViewer.currentStep ~= GuideViewer.highestUnlockedStep then
        IronPath:DebugPrint("Auto-advance skipped: not at last unlocked step.", "advance")
        return
    end

    local oldStep = GuideViewer.currentStep or 1
    GuideViewer:SkipToNextVisibleStep()
    IronPath:DebugPrint("➡️ Auto-advanced from step " .. oldStep .. " to " .. GuideViewer.currentStep, "advance")
end

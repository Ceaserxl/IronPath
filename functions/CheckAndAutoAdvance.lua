local GuideViewer = _G.IronPathViewer
function GuideViewer:CheckAndAutoAdvance(step)
    if not step or not step.objectives then
        IronPath:DebugPrint("CheckAndAutoAdvance: Step or objectives missing.",
                            "advance")
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
        use = true
    }

    for index, obj in ipairs(step.objectives) do
        if obj._isSticky then
            IronPath:DebugPrint("Skipping sticky objective at index " .. index,
                                "advance")
        elseif not obj.isComplete and not ignoredTypes[obj.type] then
            IronPath:DebugPrint("Objective[" .. index .. "] type=" ..
                                    tostring(obj.type) .. " not complete.",
                                "advance")
            allComplete = false
            break
        end
    end

    if allComplete then
        step._wasComplete = true
        IronPath:DebugPrint(
            "✅ All actionable objectives complete. Step marked complete.",
            "advance")

        if IronPath.db and IronPath.db.profile then
            IronPath:DebugPrint("Auto-advance setting: " ..
                                    tostring(IronPath.db.profile.autoAdvanceStep),
                                "advance")
            IronPath:DebugPrint("CurrentStep: " ..
                                    tostring(GuideViewer.currentStep), "advance")
            IronPath:DebugPrint("HighestUnlockedStep: " ..
                                    tostring(GuideViewer.highestUnlockedStep),
                                "advance")

            if IronPath.db.profile.autoAdvanceStep and GuideViewer.currentStep ==
                GuideViewer.highestUnlockedStep then
                local oldStep = GuideViewer.currentStep or 1
                GuideViewer:SkipToNextVisibleStep()
                IronPath:DebugPrint(
                    "➡️ Auto-advanced from step " .. oldStep .. " to " ..
                        GuideViewer.currentStep, "advance")
                GuideViewer:ShowStep()
            else
                IronPath:DebugPrint("Auto-advance conditions not met.",
                                    "advance")
            end
        else
            IronPath:DebugPrint("Profile or autoAdvanceStep setting not found.",
                                "error")
        end
    else
        IronPath:DebugPrint("❌ Step not complete. No auto-advance triggered.",
                            "advance")
    end

end

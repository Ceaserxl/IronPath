-- ================================================================
-- IronPath_Logic.lua
-- contains step logic, quest tracking, auto-advance, auto-accept
-- ================================================================

-- ------------------------------------------------
-- Current Step Tracking
-- ------------------------------------------------
IronPathUI.currentStep = IronPath_Data and IronPath_Data.lastStep or 1

-- ------------------------------------------------
-- ShowStep function
-- ------------------------------------------------
function IronPathUI:ShowStep()
    local guide = IronPath_CurrentGuide
    if not guide or not guide.steps then
        self.zoneInfo:SetText("Zone: - | Level: -")
        self.stepText:SetText("")
        return
    end

    -- show zone + range
    self.zoneInfo:SetText("Zone: |cff00ffff" .. (guide.zone or "Unknown") .. "|r | Level: |cff00ffff" .. (guide.levelRange or "-") .. "|r")

    if #guide.steps > 0 then
        self.navInfo:SetText(string.format("|cffffff00Step %d/%d|r", self.currentStep, #guide.steps))
    else
        self.navInfo:SetText("|cffffff00Step 0/0|r")
    end

    local step = guide.steps[self.currentStep]
    if not step then
        self.stepText:SetText("|cffff0000No more steps.|r")
        return
    end

    -- silent check if already complete
    local found, completed = false, false
    if step.questID then
        for i = 1, GetNumQuestLogEntries() do
            local _, _, _, _, _, _, _, qID = GetQuestLogTitle(i)
            if qID == step.questID then
                found = true
                break
            end
        end
        if C_QuestLog and C_QuestLog.IsQuestFlaggedCompleted then
            completed = C_QuestLog.IsQuestFlaggedCompleted(step.questID)
        elseif IsQuestFlaggedCompleted then
            completed = IsQuestFlaggedCompleted(step.questID)
        end
    end

    if completed then
        desc = "|cffffa500(Note: This quest may already be complete)|r\n"
    end

    -- auto-skip logic from UI checkboxes
    if IronPathUI.autoSkip:GetChecked() and step.questID then
        if step.type == "accept" and (found or completed) then
            print("|cff00ffffIronPath:|r Skipping accepted/completed " .. step.quest)
            self.currentStep = self.currentStep + 1
            self:ShowStep()
            return
        elseif step.type == "turnin" and not found and completed then
            print("|cff00ffffIronPath:|r Skipping turned-in " .. step.quest)
            self.currentStep = self.currentStep + 1
            self:ShowStep()
            return
        elseif (step.type == "complete" or step.type == "kill" or step.type == "collect") and completed then
            print("|cff00ffffIronPath:|r Skipping completed objective " .. step.quest)
            self.currentStep = self.currentStep + 1
            self:ShowStep()
            return
        end
    end

    -- build step description
    local desc = ""
    if step.type == "accept" then
        desc = "Accept: |cffffff00" .. step.quest .. "|r"
    elseif step.type == "turnin" then
        desc = "Turn in: |cffffff00" .. step.quest .. "|r"
    elseif step.type == "complete" then
        desc = "Complete: |cffffff00" .. step.quest .. "|r"
    elseif step.type == "collect" then
        desc = "Collect: |cffffff00" .. (step.item or "item") .. "|r"
    elseif step.type == "kill" then
        if type(step.enemy) == "table" then
            local enemyList = table.concat(step.enemy, ", ")
            desc = "Kill: |cffffff00" .. enemyList .. "|r"
        else
            desc = "Kill: |cffffff00" .. (step.enemy or "enemy") .. "|r"
        end
    else
        desc = step.description or "Unknown Step"
    end

    if step.npc then
        desc = desc .. "\n  • Talk to: " .. step.npc
    end
    if step.objective then
        desc = desc .. "\n  • " .. step.objective
    end
    if step.coords then
        desc = desc .. string.format("\n  • Go to: (%.2f, %.2f)", step.coords[1], step.coords[2])
    end

    self.stepText:SetText(desc)
    IronPath_Data.lastStep = self.currentStep
    self:FlashHighlight()

    -- arrow
    IronPath_CreateArrow()
    if IronPathArrowFrame then
        IronPathArrowFrame.stepCoords = step.coords
        if step.coords then
            IronPathArrowFrame:Show()
        else
            IronPathArrowFrame:Hide()
        end
    end
end

-- ------------------------------------------------
-- Quest Progress + Auto Advance
-- ------------------------------------------------
local questWatcher = CreateFrame("Frame")
questWatcher:RegisterEvent("QUEST_ACCEPTED")
questWatcher:RegisterEvent("QUEST_TURNED_IN")
questWatcher:RegisterEvent("QUEST_LOG_UPDATE")
questWatcher:SetScript("OnEvent", function()
    IronPathUI:ShowStep()

    local guide = IronPath_CurrentGuide
    if not guide or not guide.steps then return end
    local step = guide.steps[IronPathUI.currentStep]
    if not step or not step.questID then return end

    for i = 1, GetNumQuestLogEntries() do
        local _, _, _, isHeader, _, _, isComplete, qID = GetQuestLogTitle(i)
        if qID == step.questID and not isHeader then
            local numObjectives = GetNumQuestLeaderBoards(i)
            local progressText = ""
            local allDone = true
            for j = 1, numObjectives do
                local desc, objType, finished = GetQuestLogLeaderBoard(j, i)
                if desc then
                    local color = finished and "|cff00ff00" or "|cffff0000"
                    progressText = progressText .. ("\n  • %s%s|r"):format(color, desc)
                    if not finished then
                        allDone = false
                    end
                end
            end

            IronPathUI.stepText:SetText(IronPathUI.stepText:GetText() .. progressText)

            if allDone and isComplete then
                print("|cff00ffffIronPath:|r Objectives complete — moving to next step.")
                IronPathUI.currentStep = IronPathUI.currentStep + 1
                IronPathUI:ShowStep()
            end

            break
        end
    end
end)

-- ------------------------------------------------
-- Auto Accept / Turnin Handler
-- ------------------------------------------------
local autoHandler = CreateFrame("Frame")
autoHandler:RegisterEvent("QUEST_DETAIL")
autoHandler:RegisterEvent("QUEST_PROGRESS")
autoHandler:RegisterEvent("QUEST_COMPLETE")
autoHandler:SetScript("OnEvent", function(self, event)
    local guide = IronPath_CurrentGuide
    if not guide or not guide.steps then return end
    local step = guide.steps[IronPathUI.currentStep]
    if not step or not step.questID then return end

    local currentQuestID = GetQuestID()
    if currentQuestID ~= step.questID then
        return
    end

    if IronPathUI.autoAccept:GetChecked() and event == "QUEST_DETAIL" then
        AcceptQuest()
        print("|cff00ffffIronPath:|r Auto-accepted " .. (step.quest or "quest") .. ".")
    elseif IronPathUI.autoTurnin:GetChecked() and event == "QUEST_PROGRESS" then
        if IsQuestCompletable() then
            CompleteQuest()
            print("|cff00ffffIronPath:|r Auto-completing " .. (step.quest or "quest") .. ".")
        end
    elseif IronPathUI.autoTurnin:GetChecked() and event == "QUEST_COMPLETE" then
        if GetNumQuestChoices() <= 1 then
            GetQuestReward(1)
            print("|cff00ffffIronPath:|r Auto-turning in " .. (step.quest or "quest") .. ".")
        end
    end
end)

-- ------------------------------------------------
-- Final Loader
-- ------------------------------------------------
local loader = CreateFrame("Frame")
loader:RegisterEvent("PLAYER_LOGIN")
loader:SetScript("OnEvent", function()
    IronPathUI:Show()

    local guide = IronPath_CurrentGuide
    if guide and guide.steps then
        while true do
            local step = guide.steps[IronPathUI.currentStep]
            if not step then
                break
            end
            local found, completed = false, false
            for i = 1, GetNumQuestLogEntries() do
                local _, _, _, _, _, _, _, qID = GetQuestLogTitle(i)
                if qID == step.questID then
                    found = true
                    break
                end
            end
            if C_QuestLog and C_QuestLog.IsQuestFlaggedCompleted then
                completed = C_QuestLog.IsQuestFlaggedCompleted(step.questID)
            elseif IsQuestFlaggedCompleted then
                completed = IsQuestFlaggedCompleted(step.questID)
            end

            local shouldSkip = false
            if step.questID then
                if step.type == "accept" and (found or completed) then
                    shouldSkip = true
                elseif step.type == "turnin" and not found and completed then
                    shouldSkip = true
                elseif (step.type == "complete" or step.type == "kill" or step.type == "collect") and completed then
                    shouldSkip = true
                end
            end

            if shouldSkip then
                IronPathUI.currentStep = IronPathUI.currentStep + 1
            else
                break
            end
        end
    end

    IronPathUI:ShowStep()
end)

-- ------------------------------------------------
-- Nav buttons
-- ------------------------------------------------
IronPathUI.nextBtn:SetScript("OnClick", function()
    IronPathUI.currentStep = IronPathUI.currentStep + 1
    IronPathUI:ShowStep()
end)

IronPathUI.prevBtn:SetScript("OnClick", function()
    if IronPathUI.currentStep > 1 then
        IronPathUI.currentStep = IronPathUI.currentStep - 1
        IronPathUI:ShowStep()
    end
end)

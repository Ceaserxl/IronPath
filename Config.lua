-- ================================================================
-- IronPath_Config.lua – Ace3 Configuration Window
-- ================================================================
local IronPath        = _G.IronPath
local AceConfig       = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")

-- ------------------------------------------------
-- Dynamic Guide List
-- ------------------------------------------------
local function GetGuideOptions()
    local opts = {}
    for _, guide in ipairs(IronPath_Guides or {}) do
        local label = guide.easyName or (guide.race or "Unknown") .. " (" .. (guide.levelRange or "?") .. ")"
        opts[label] = label -- key and value are the same
    end
    return opts
end

-- ------------------------------------------------
-- AceConfig Option Table
-- ------------------------------------------------
local options = {
    name = "IronPath",
    type = "group",
    args = {
        header = {
            type  = "header",
            name  = "IronPath Settings",
            order = 0,
        },
        desc = {
            type  = "description",
            name  = "Customize how IronPath behaves.",
            order = 1,
        },

        behaviorGroup = {
            type  = "group",
            name  = "Behavior",
            inline = true,
            order = 10,
            args = {
                autoAccept = {
                    type = "toggle",
                    name = "Auto-Accept Quests",
                    desc = "Automatically accept quests when they become available.",
                    order = 1,
                    get = function() return IronPath.db.profile.autoAccept end,
                    set = function(_, val) IronPath.db.profile.autoAccept = val end,
                },
                autoTurnin = {
                    type = "toggle",
                    name = "Auto Turn-In Quests",
                    desc = "Automatically turn in completed quests.",
                    order = 2,
                    get = function() return IronPath.db.profile.autoTurnin end,
                    set = function(_, val) IronPath.db.profile.autoTurnin = val end,
                },
                autoAdvanceStep = {
                    type = "toggle",
                    name = "Auto Advance Steps",
                    desc = "Automatically skip to the next step if the current one is complete.",
                    order = 3,
                    get = function() return IronPath.db.profile.autoAdvanceStep end,
                    set = function(_, val) IronPath.db.profile.autoAdvanceStep = val end,
                },
                autoSellGrey = {
                    type = "toggle",
                    name = "Auto-Sell Grey Items",
                    desc = "Sell poor-quality items automatically when visiting a vendor.",
                    order = 4,
                    get = function() return IronPath.db.profile.autoSellGrey end,
                    set = function(_, val) IronPath.db.profile.autoSellGrey = val end,
                },
                autoRepair = {
                    type = "toggle",
                    name = "Auto Repair Gear",
                    desc = "Repair gear automatically when at a vendor that offers repairs.",
                    order = 5,
                    get = function() return IronPath.db.profile.autoRepair end,
                    set = function(_, val) IronPath.db.profile.autoRepair = val end,
                },
                debug = {
                    type = "toggle",
                    name = "Enable Debug Logging",
                    desc = "Log detailed debug messages to the chat.",
                    order = 6,
                    get = function() return IronPath.db.profile.debug end,
                    set = function(_, val) IronPath.db.profile.debug = val end,
                },
                stepDebug = {
                    type = "toggle",
                    name = "Show Step Debug Info",
                    desc = "Ignore conditions and show all steps (for testing).",
                    order = 7,
                    get = function() return IronPath.db.profile.stepDebug end,
                    set = function(_, val) IronPath.db.profile.stepDebug = val end,
                },
            },
        },

        guideGroup = {
            type  = "group",
            name  = "Guide Selection",
            inline = true,
            order = 20,
            args = {
                selectedGuide = {
                    type = "select",
                    name = "Active Guide",
                    desc = "Select which guide to use.",
                    order = 1,
                    values = GetGuideOptions,
                    get = function() return IronPath.db.char.lastGuide or "" end,
                    set = function(_, val)
                        IronPath.db.char.lastGuide = val
                        for _, guide in ipairs(IronPath_Guides) do
                            local label = guide.easyName or (guide.race or "Unknown") .. " (" .. (guide.levelRange or "?") .. ")"
                            if label == val then
                                IronPath:SetCurrentGuide(guide)
                                print("|cff00ffffIronPath:|r Selected guide changed to", val)
                                return
                            end
                        end
                        print("|cffff0000IronPath:|r Guide not found:", val)
                    end,
                },
                reset = {
                    type = "execute",
                    name = "Reset Guide Progress",
                    desc = "Start the current guide over from Step 1.",
                    order = 2,
                    func = function()
                        IronPath.db.char.lastStep = 1
                        if Viewer then
                            Viewer.currentStep = 1
                            Viewer:ShowStep()
                        end
                        print("|cff00ffffIronPath:|r Progress reset to step 1.")
                    end,
                },
            },
        },
    },
}

-- ------------------------------------------------
-- Register Config Panel
-- ------------------------------------------------
AceConfig:RegisterOptionsTable("IronPath", options)
AceConfigDialog:AddToBlizOptions("IronPath", "IronPath")

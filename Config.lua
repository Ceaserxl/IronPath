-- ================================================================
-- IronPath_Config.lua – Ace3 Configuration Window
-- ================================================================
local IronPath       = _G.IronPath
local AceConfig      = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")

-- ------------------------------------------------
-- Dynamic Guide List
-- ------------------------------------------------
local function GetGuideOptions()
    local opts = {}
    for _, guide in ipairs(IronPath_Guides or {}) do
        local label = (guide.race or "Unknown") .. " (" .. (guide.levelRange or "?") .. ")"
        opts[guide.zone] = label
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
                    name = "Auto Accept Quests",
                    desc = "Automatically accept quests when available.",
                    order = 1,
                    get = function() return IronPath.db.profile.autoAccept end,
                    set = function(_, val) IronPath.db.profile.autoAccept = val end,
                },
                autoTurnin = {
                    type = "toggle",
                    name = "Auto Turn-in Quests",
                    desc = "Automatically turn in completed quests.",
                    order = 2,
                    get = function() return IronPath.db.profile.autoTurnin end,
                    set = function(_, val) IronPath.db.profile.autoTurnin = val end,
                },
                autoAdvanceStep = {
                    type = "toggle",
                    name = "Auto Advance Steps",
                    desc = "Skip to the next step if current is already completed.",
                    order = 3,
                    get = function() return IronPath.db.profile.autoAdvanceStep end,
                    set = function(_, val) IronPath.db.profile.autoAdvanceStep = val end,
                },
                debug = {
                    type = "toggle",
                    name = "Enable Debug Logging",
                    desc = "Print detailed debug messages to chat.",
                    order = 4,
                    get = function() return IronPath.db.profile.debug end,
                    set = function(_, val) IronPath.db.profile.debug = val end,
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
                    name = "Last Used Guide",
                    desc = "Select your active guide.",
                    order = 1,
                    values = GetGuideOptions,
                    get = function() return IronPath.db.profile.lastGuide or "" end,
                    set = function(_, val)
                        IronPath.db.profile.lastGuide = val
                        print("|cff00ffffIronPath:|r Selected guide changed to", val)
                    end,
                },
                reset = {
                    type = "execute",
                    name = "Reset Guide Progress",
                    desc = "Resets your current guide back to step 1.",
                    order = 2,
                    func = function()
                        IronPath.db.profile.lastStep = 1
                        if IronPathUI then
                            IronPathUI.currentStep = 1
                            IronPathUI:ShowStep()
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

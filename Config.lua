-- ================================================================
-- IronPath_Config.lua – Ace3 Configuration Window
-- ================================================================
local IronPath = _G.IronPath
local AceConfig = LibStub("AceConfig-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")

-- ------------------------------------------------
-- Dynamic Guide List
-- ------------------------------------------------
local function GetGuideOptions()
    local opts = {}
    for _, guide in ipairs(IronPath_Guides or {}) do
        local label = guide.easyName or (guide.race or "Unknown") .. " (" ..
                          (guide.levelRange or "?") .. ")"
        opts[label] = label
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
        header = {type = "header", name = "IronPath Settings", order = 0},
        desc = {
            type = "description",
            name = "Customize how IronPath behaves.",
            order = 1
        },

        automationGroup = {
            type = "group",
            name = "Automation",
            inline = true,
            order = 10,
            args = {
                autoAccept = {
                    type = "toggle",
                    name = "Auto Accept Quests",
                    desc = "Automatically accept quests when available.",
                    order = 1,
                    get = function()
                        return IronPath.db.profile.autoAccept
                    end,
                    set = function(_, val)
                        IronPath.db.profile.autoAccept = val
                    end
                },
                autoTurnin = {
                    type = "toggle",
                    name = "Auto Turn-In Quests",
                    desc = "Automatically turn in completed quests.",
                    order = 2,
                    get = function()
                        return IronPath.db.profile.autoTurnin
                    end,
                    set = function(_, val)
                        IronPath.db.profile.autoTurnin = val
                    end
                },
                autoAdvanceStep = {
                    type = "toggle",
                    name = "Auto Advance Step",
                    desc = "Move to the next step automatically when complete.",
                    order = 3,
                    get = function()
                        return IronPath.db.profile.autoAdvanceStep
                    end,
                    set = function(_, val)
                        IronPath.db.profile.autoAdvanceStep = val
                    end
                },
                autoSellGrey = {
                    type = "toggle",
                    name = "Auto Sell Grey Items",
                    desc = "Automatically sell poor-quality (grey) items at vendors.",
                    order = 4,
                    get = function()
                        return IronPath.db.profile.autoSellGrey
                    end,
                    set = function(_, val)
                        IronPath.db.profile.autoSellGrey = val
                    end
                },
                autoRepair = {
                    type = "toggle",
                    name = "Auto Repair Gear",
                    desc = "Automatically repair your gear at vendors.",
                    order = 5,
                    get = function()
                        return IronPath.db.profile.autoRepair
                    end,
                    set = function(_, val)
                        IronPath.db.profile.autoRepair = val
                    end
                }
            }
        },

        devGroup = {
            type = "group",
            name = "Development",
            inline = true,
            order = 20,
            args = {
                debug = {
                    type = "toggle",
                    name = "Enable Debug Logging",
                    desc = "Log debug messages to the chat.",
                    order = 1,
                    get = function()
                        return IronPath.db.profile.debug
                    end,
                    set = function(_, val)
                        IronPath.db.profile.debug = val
                    end
                },
                stepDebug = {
                    type = "toggle",
                    name = "Show Step Debug Info",
                    desc = "Show all steps and ignore conditions (for testing).",
                    order = 2,
                    get = function()
                        return IronPath.db.profile.stepDebug
                    end,
                    set = function(_, val)
                        IronPath.db.profile.stepDebug = val
                    end
                },
                showAllSteps = {
                    type = "toggle",
                    name = "Show All Steps",
                    desc = "Bypass filters and show every step regardless of logic.",
                    order = 3,
                    get = function()
                        return IronPath.db.profile.showAllSteps
                    end,
                    set = function(_, val)
                        IronPath.db.profile.showAllSteps = val
                    end
                }
            }
        },

        guideGroup = {
            type = "group",
            name = "Guide Selection",
            inline = true,
            order = 30,
            args = {
                selectedGuide = {
                    type = "select",
                    name = "Active Guide",
                    desc = "Choose the guide you want to follow.",
                    order = 1,
                    values = GetGuideOptions,
                    get = function()
                        return IronPath.db.char.lastGuide or ""
                    end,
                    set = function(_, val)
                        IronPath.db.char.lastGuide = val
                        for _, guide in ipairs(IronPath_Guides) do
                            local label = guide.easyName or
                                              (guide.race or "Unknown") .. " (" ..
                                              (guide.levelRange or "?") .. ")"
                            if label == val then
                                IronPath.db.char.lastStep = 1 -- Ensure reset before setting guide
                                IronPath:SetCurrentGuide(guide)
                                print(
                                    "|cff00ffffIronPath:|r Selected guide changed to",
                                    val)
                                return
                            end
                        end
                        print("|cffff0000IronPath:|r Guide not found:", val)
                    end
                },
                reset = {
                    type = "execute",
                    name = "Reset Guide Progress",
                    desc = "Reset the current guide back to Step 1.",
                    order = 2,
                    func = function()
                        IronPath.db.char.lastStep = 1
                        IronPathViewer.currentStep = 1
                        IronPathViewer:ShowStep()
                        print("|cff00ffffIronPath:|r Progress reset to step 1.")
                    end
                },
                wipe = {
                    type = "execute",
                    name = "Full Data Wipe",
                    desc = "Completely erase all IronPath saved progress and settings.",
                    order = 99,
                    confirm = true,
                    confirmText = "Are you sure you want to permanently erase all IronPath data?",
                    func = function()
                        _G.IronPath_Data = nil -- ✅ wipe correct SavedVariables table
                        if IronPath and IronPath.db then
                            IronPath.db.char = {}
                            IronPath.db.profile = {}
                        end
                        ReloadUI()
                    end
                }
            }
        }
    }
}

-- ------------------------------------------------
-- Register Config Panel
-- ------------------------------------------------
AceConfig:RegisterOptionsTable("IronPath", options)
AceConfigDialog:AddToBlizOptions("IronPath", "IronPath")

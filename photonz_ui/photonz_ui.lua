-- Define a function to print or set the maxfps value
local function maxfps(value)
    if value then
        SetCVar("maxfps", value)
        print("maxfps set to:", value)
    else
        local maxfps = GetCVar("maxfps")
        print("maxfps value is:", maxfps)
    end
end

-- Define a function to disable or enable the ffxglow effect
local function ffxglow(value)
    if value then
        SetCVar("ffxglow", value)
        print("ffxglow set to:", value)
    else
        local ffxglow = GetCVar("ffxglow")
        print("ffxglow value is:", ffxglow)
    end
end

-- Define a function to execute all of the useful commands
local function photonz_ui_enable()
    maxfps(300) -- Set maxfps to 300
    ffxglow(0) -- Disable ffxGlow effect
end

-- Define a function to show current settings
local function photonz_ui_show()
    maxFPS() 
    ffxglow() 
end

function photonz_ui_help()
    print("List of slash commands for photonz_ui:")
    print("/maxfps - set maximum fps limit")
    print("/ffxglow - toggle FFX glow effect")
    print("/photonz_ui_enable - enable all settings")
    print("/photonz_ui_show - show current settings")
    print("/photonz_ui_help - show help")
end

-- Define slash commands 
SLASH_MAXFPS1 = "/maxfps"
SLASH_FFXOFF1 = "/ffxglow"
SLASH_PHOTONZUIENA1 = "/photonz_ui_enable"
SLASH_PHOTONZUISHOW1 = "/photonz_ui_show"
SLASH_PHOTONZUIHELP1 = "/photonz_ui_help"
SlashCmdList["MAXFPS"] = maxfps
SlashCmdList["FFXGLOW"] = ffxglow
SlashCmdList["PHOTONZUIENA"] = photonz_ui_enable
SlashCmdList["PHOTONZUISHOW"] = photonz_ui_show
SlashCmdList["PHOTONZUISHELP"] = photonz_ui_help
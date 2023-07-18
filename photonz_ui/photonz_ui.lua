-- Define a function to print or set the maxfps value
--local function maxfps(value)
--    if value then
--        SetCVar("maxfps", value)
--        print("maxfps set to:", value)
--    else
--        local maxfps = GetCVar("maxfps")
--        print("maxfps value is:", maxfps)
--    end
--end

-- Define a function to disable or enable the ffxglow effect
--local function ffxglow(value)
--    if value then
--        SetCVar("ffxglow", value)
--        print("ffxglow set to:", value)
--    else
--        local ffxglow = GetCVar("ffxglow")
--        print("ffxglow value is:", ffxglow)
--    end
--end

-- Define a function to disable or enable class colors in friendly nameplates
local function classfriendly(value)
    if value then
        SetCVar("ShowClassColorInFriendlyNameplate", value)
        print("ShowClassColorInFriendlyNameplate set to:", value)
    else
        local classfriendly = GetCVar("ShowClassColorInFriendlyNameplate")
            print("ShowClassColorInFriendlyNameplate value is:", classfriendly)
    end
end


-- Define a function to execute all of the useful commands
--local function photonz_ui_enable()
--    maxfps(300) -- Set maxfps to 300
--    ffxglow(0) -- Disable ffxGlow effect
--    classfriendly(0) -- Disable class colors in friendly nameplates
--end

-- Define a function to show current settings
--local function photonz_ui_show()
--    maxFPS() 
--    ffxglow() 
--    classfriendly()
--end

--function photonz_ui_help()
  --  print("/photonz_ui_help - show help")
  --  print("/photonz_ui_enable - enable all settings")
   -- print("/photonz_ui_show - show current settings")
  --  print("List of slash commands for photonz_ui:")
   -- print("/maxfps 0-300 - set maximum fps limit")
    --print("/ffxglow 0-1 - toggle FFX glow effect")
   -- print("/classfriendly 0-1 - toggle class colors in friendly nameplates")
--end

-- Define slash commands 
--SLASH_MAXFPS1 = "/maxfps"
--SLASH_FFXOFF1 = "/ffxglow"
SLASH_CLASSFRIENDLY = "/classfriendly"
--SLASH_PHOTONZUIENA1 = "/photonz_ui_enable"
--SLASH_PHOTONZUISHOW1 = "/photonz_ui_show"
--SLASH_PHOTONZUIHELP1 = "/photonz_ui_help"
SlashCmdList["CLASSFRIENDLY"] = classfriendly
--SlashCmdList["MAXFPS"] = maxfps
--SlashCmdList["FFXGLOW"] = ffxglow
--SlashCmdList["PHOTONZUIENA"] = photonz_ui_enable
--SlashCmdList["PHOTONZUISHOW"] = photonz_ui_show
--SlashCmdList["PHOTONZUISHELP"] = photonz_ui_help

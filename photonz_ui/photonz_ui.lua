--[[--------------------------------------------------------------------
photonz_ui
----------------------------------------------------------------------]]

local cvars = {

    lootUnderMouse          = "1",
    movieSubtitle                   = "1",
    showTimestamps              = "%H:%M",
    colorChatNamesByClass       = "1", -- no UI

    ShowClassColorInFriendlyNameplate = "0",
    nameplateOccludedAlphaMult = "1",
    cameraDistanceMaxZoomFactor = "2.6", 
    scriptErrors    = "1",
    showTutorials   = "0",

    ffxGlow             = "0", 
    ffxDeath             = "0", 
    ffxNether             = "0", 
    maxFPS              = "300",
    violenceLevel         = "0", -- min 0, max 5
    }
    
    local f = CreateFrame("Frame")
    f:RegisterEvent("PLAYER_LOGIN")
    f:SetScript("OnEvent", function()

        -- Set friendly nameplate size
        C_NamePlate.SetNamePlateFriendlySize(60, 30)
        print("photonz_ui loaded")
    
        for cvar, value in pairs(cvars) do
            local current = tostring(GetCVar(cvar))
            if current ~= value then            
                SetCVar(cvar, value)
                -- Print message if CVar have been changed
                C_Timer.After(1, function()
                    print("|cffff9f7fSetCVar|r", cvar, "|cffff9f7f==>|r", value)
                end)
            end
        end
    end)

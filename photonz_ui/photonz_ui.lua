--[[--------------------------------------------------------------------
photonz_ui
----------------------------------------------------------------------]]

local cvars = {

    lootUnderMouse          = "1",
    movieSubtitle                   = "1",
    showTimestamps              = "%H:%M",
    colorChatNamesByClass       = "1", 
    DisableAdvancedFlyingVelocityVFX = "1",
    empowerTapControls          = "1",
    expandBagBar                = "0",
    raidFramesDisplayIncomingHeals = "1",
    interactQuestItems          = "1",
    graphicsSpellDensity        = "4",
    graphicsShadowQuality       = "0",
    graphicsLiquidDetail        = "0",
    graphicsParticleDensity     = "5",
    graphicsSSAO                = "0",
    graphicsDepthEffects        = "0",
    graphicsComputeEffects      = "0",
    graphicsOutlineMode         = "0",
    graphicsProjectedTextures   = "1",
    graphicsEnvironmentDetail   = "0",
    textureFilteringMode        = "0", 
    shadowRT                    = "0",
    ShowClassColorInFriendlyNameplate = "0",
    nameplatePlayerMaxDistance  = "60",
    nameplateOccludedAlphaMult = "1",
    nameplateHorizontalScale    = "1",
    cameraDistanceMaxZoomFactor = "2.6", 
    scriptErrors    = "1",
    showTutorials   = "0",
    ffxGlow             = "0", 
    ffxDeath             = "0", 
    ffxNether             = "0", 
    maxFPS              = "300",
    violenceLevel         = "0", 
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

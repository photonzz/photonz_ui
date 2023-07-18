-- Define a function to print or set the maxfps value
local function maxFPS(value)
    if value then
        SetCVar("maxfps", value)
        print("MaxFPS set to:", value)
    else
        local maxfps = GetCVar("maxfps")
        print("MaxFPS value is:", maxfps)
    end
end
      
-- Define a slash command to execute the maxFPS function
SLASH_MAXFPS1 = "/maxfps"
SlashCmdList["MAXFPS"] = maxFPS

-- Define a function to activate performance mode
    local function performance()
        maxFPS(300) -- Set maxfps to 30
        ffxglowOff() -- Disable ffxGlow effect
      end
      
      -- Define a slash command to execute the performance function
      SLASH_PERFORMANCE1 = "/performance"
      SlashCmdList["PERFORMANCE"] = performance
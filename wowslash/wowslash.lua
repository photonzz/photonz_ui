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

-- Define a function to disable the ffxglow effect
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
local function performance()
    maxFPS(300) -- Set maxfps to 300
    ffxglow(0) -- Disable ffxGlow effect
end

-- Define slash commands 
SLASH_MAXFPS1 = "/maxfps"
SLASH_FFXOFF1 = "/ffxglow"
SLASH_PERFORMANCE1 = "/performance"
SlashCmdList["MAXFPS"] = maxFPS
SlashCmdList["FFXGLOW"] = ffxglow
SlashCmdList["PERFORMANCE"] = performance
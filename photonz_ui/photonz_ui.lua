local function ShowClassColorInFriendlyNameplate(value)
    if string.trim(value) ~= "" then -- if value parameter is not nil, set the cvar value
        SetCVar("ShowClassColorInFriendlyNameplate", tonumber(value))
        local ShowClassColorInFriendlyNameplate = GetCVar("ShowClassColorInFriendlyNameplate")
        print("ShowClassColorInFriendlyNameplate set to:", ShowClassColorInFriendlyNameplate)
    else -- if no value parameter is provided, get the current cvar value
        local ShowClassColorInFriendlyNameplate = GetCVar("ShowClassColorInFriendlyNameplate")
        print("ShowClassColorInFriendlyNameplate value is currently set to:", ShowClassColorInFriendlyNameplate)
    end
end

local function maxfps(value)
    if string.trim(value) ~= "" then -- if value parameter is not nil, set the cvar value
        SetCVar("maxfps", tonumber(value))
        local maxfps = GetCVar("maxfps")
        print("maxfps set to:", maxfps)
    else -- if no value parameter is provided, get the current cvar value
        local maxfps = GetCVar("maxfps")
        print("maxfps value is currently set to:", maxfps)
    end
end

local function gxVSync(value)
    if string.trim(value) ~= "" then -- if value parameter is not nil, set the cvar value
        SetCVar("gxVSync", tonumber(value))
        local maxfps = GetCVar("gxVSync")
        print("gxVSync set to:", gxVSync)
    else -- if no value parameter is provided, get the current cvar value
        local gxVSync = GetCVar("gxVSync")
        print("gxVSync value is currently set to:", gxVSync)
    end
end

local function puihelp()
    print("/puihelp")
    print("/puienable")
    print("/ShowClassColorInFriendlyNameplate 0 1")
    print("/maxfps 0 300")
    print("/gxVSync 0 1 2")
end

local function puienable()
    maxfps(300) 
    ShowClassColorInFriendlyNameplate (0)
end

SlashCmdList.ShowClassColorInFriendlyNameplate = ShowClassColorInFriendlyNameplate
SlashCmdList.maxfps = maxfps
SlashCmdList.gxvsync = gxvsync
SlashCmdList.puihelp = puihelp
SlashCmdList.puienable = puienable

SLASH_gxvsync1 = "/gxvsync"
SLASH_ShowClassColorInFriendlyNameplate1 = "/ShowClassColorInFriendlyNameplate"
SLASH_maxfps1 = "/maxfps"
SLASH_puihelp1 ="/puihelp"
SLASH_puienable1 ="/puienable"

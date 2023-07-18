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

local function puihelp()
    print("/puihelp")
    print("/puienable")
    print("ShowClassColorInFriendlyNameplate 0 1")
    print("/maxfps 0 300")
end

local function puienable()
    maxfps(300) 
    ShowClassColorInFriendlyNameplate (0)
end

SlashCmdList.puihelp = puihelp
SlashCmdList.puienable = puienable
SlashCmdList.ShowClassColorInFriendlyNameplate = ShowClassColorInFriendlyNameplate
SlashCmdList.maxfps = maxfps

SLASH_puihelp1 ="/puihelp"
SLASH_puienable1 ="/puienable"
SLASH_ShowClassColorInFriendlyNameplate1 = "/ShowClassColorInFriendlyNameplate"
SLASH_maxfps1 = "/maxfps"

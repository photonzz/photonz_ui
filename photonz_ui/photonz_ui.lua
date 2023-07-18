local function ShowClassColorInFriendlyNameplate(value)
    if string.trim(value) ~= "" then -- if value parameter is not nil, set the cvar value
        SetCVar("ShowClassColorInFriendlyNameplate", value)
        local ShowClassColorInFriendlyNameplate = GetCVar("ShowClassColorInFriendlyNameplate")
        print("ShowClassColorInFriendlyNameplate set to:", ShowClassColorInFriendlyNameplate)
    else -- if no value parameter is provided, get the current cvar value
        local ShowClassColorInFriendlyNameplate = GetCVar("ShowClassColorInFriendlyNameplate")
        print("ShowClassColorInFriendlyNameplate value is currently set to:", ShowClassColorInFriendlyNameplate)
    end
end

local function maxfps(value)
    if string.trim(value) ~= "" then -- if value parameter is not nil, set the cvar value
        SetCVar("maxfps", value)
        local maxfps = GetCVar("maxfps")
        print("maxfps set to:", maxfps)
    else -- if no value parameter is provided, get the current cvar value
        local maxfps = GetCVar("maxfps")
        print("maxfps value is currently set to:", maxfps)
    end
end

local function nameplateOccludedAlphaMult(value)
    if string.trim(value) ~= "" then -- if value parameter is not nil, set the cvar value
        SetCVar("nameplateOccludedAlphaMult", value)
        local nameplateOccludedAlphaMult = GetCVar("nameplateOccludedAlphaMult")
        print("nameplateOccludedAlphaMult set to:", nameplateOccludedAlphaMult)
    else -- if no value parameter is provided, get the current cvar value
        local nameplateOccludedAlphaMult = GetCVar("nameplateOccludedAlphaMult")
        print("nameplateOccludedAlphaMult value is currently set to:", nameplateOccludedAlphaMult)
    end
end

local function puihelp()
    print("/puihelp")
    print("/puienable")
    print("/ShowClassColorInFriendlyNameplate 0 1")
    print("/maxfps 0 300")
    print("nameplateOccludedAlphaMult 0 1")
end

local function puienable()
    maxfps(300) 
    ShowClassColorInFriendlyNameplate (0)
    nameplateOccludedAlphaMult(1)
end

SlashCmdList.ShowClassColorInFriendlyNameplate = ShowClassColorInFriendlyNameplate
SlashCmdList.maxfps = maxfps
SlashCmdList.nameplateOccludedAlphaMult = nameplateOccludedAlphaMult
SlashCmdList.puihelp = puihelp
SlashCmdList.puienable = puienable

SLASH_nameplateOccludedAlphaMult1 = "/nameplateOccludedAlphaMult"
SLASH_ShowClassColorInFriendlyNameplate1 = "/ShowClassColorInFriendlyNameplate"
SLASH_maxfps1 = "/maxfps"
SLASH_puihelp1 ="/puihelp"
SLASH_puienable1 ="/puienable"

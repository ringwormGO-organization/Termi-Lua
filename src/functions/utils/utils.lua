---
--- @author Stjepan Bilić Matišić
--- @author Andrej Bartulin
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: Utils file for Termi-Lua
---

local util = {}

util.os = "linux"
util.ERROR_MESSAGE = "ERROR: ERROR OCCURED!"
util.TODO_MESSAGE = "TODO!"
util.REQUIRES_IMPLEMENTATION_MESSAGE = "REQUIRES YOUR OWN IMPLEMENTATION!"

--- Return how many elements table (list) has
--- @param T table
--- @return integer
function util.Length(T)
    return #T
end

--- Check if value is in table (list)
--- @param tab table
--- @param val string
--- @return boolean
function util.Value(tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

util.Commands = {"base64", "credits", "date", "exit", "echo", "find", "list", "calc", "geocalc", "createf", "mkdir", "rm", "whois"}
local elements = util.Length(util.Commands)

util.Exclude = {"exit", "date", "whois", "credits"}

--- Split string into the table (list)
--- @param s string
--- @param delimiter string
--- @return table
function util.Split(s, delimiter)
    local result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

--- Print all commands in table
--- @return boolean
function util.Print_commands()
    table.sort(util.Commands)

    for i = 1, elements, 1 do
        io.write(" ")
        io.write(util.Commands[i])
        io.write(" ")
    end

    print(" ")
    print("-------------------------------------------------------")

    return true
end

--- Returns text of find command desired for terminal
--- @param directory string
--- @return table
function util.scandir(directory)
    local t = {}
    local str = util.TODO_MESSAGE
    if util.os == "windows" then
        str = util.TODO_MESSAGE
    elseif util.os == "linux" then
        local i, popen = 0, io.popen
        local pfile = popen('ls -a "'..directory..'"')

        if pfile ~= nil then
            for filename in pfile:lines() do
                i = i + 1
                t[i] = filename
            end
            pfile:close()
            return t
        end

        str = util.ERROR_MESSAGE
    else
        str = util.REQUIRES_IMPLEMENTATION_MESSAGE
    end

    str:gsub(".", function(c) table.insert(t, c) end)
    return t;
end

--- Returns text of mkdir command desired for terminal
--- @param path string
--- @return string
function util.mkdir_command(path)
    if util.os == "windows" then
        return "md " .. path
    elseif util.os == "linux" then
        return "mkdir " .. path
    else
        return util.REQUIRES_IMPLEMENTATION_MESSAGE
    end
end

return util

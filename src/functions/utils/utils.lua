---
--- @author Stjepan Bilić Matišić
--- @author Andrej Bartulin
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: Utils file for Termi-Lua
---

local util = {}

--- Return how many elements table (list) has
--- @param T table
--- @return integer
function util.Length(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
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

util.Commands = {"base64", "credits", "exit", "calc", "geocalc", "createf", "mkdir", "rm", "whoami"}
local elements = util.Length(util.Commands)

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

return util
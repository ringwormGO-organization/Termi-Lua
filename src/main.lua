---
--- @author Stjepan Bilić Matišić
--- @author Andrej Bartulin
--- @PROJECT: Termi-Lua
--- @LICENSE: BSD-3-Clause-License
--- @DESCRIPTION: Main file for Termi-Lua
---

-- LUA 5.1 MINIMUM
-- TERMI-LUA VERSION 0.0.7
--------------------------

--- Return how many elements table (list) has
--- @param T table
--- @return integer
function Length(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end

--- Check if value is in table (list)
--- @param tab table
--- @param val string
--- @return boolean
function Value(tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

local commands = {"help", "credits", "exit", "calc", "geocalc", "createf", "geocalc", "mkdir", "rm"}

print("\n")
print("ooooooooooo                              ")
print("    888      ooooooooooo                          o88   ")
print("    888      888    88  oo oooooo  oo ooo oooo   oooo  ")
print("    888      888ooo8     888    888 888 888 888   888 ")
print("    888      888    oo   888        888 888 888   888  ")
print("   o888o    o888ooo8888 o888o      o888o888o888o o888o ")
print("                       0.0.7                           ")
print("-------------------------------------------------------")

local elements = Length(commands)

for i = 1, elements, 1 do
	io.write(" ")
	io.write(commands[i])
	io.write(" ")
end

print(" ")
print("-------------------------------------------------------")

repeat
	io.write("Termi> ")
	
	local path = "functions/"
	local input = io.read()

	path = path .. tostring(input) .. ".lua"

	if Value(commands, tostring(input)) and input ~= "exit" then
		dofile(path)

	elseif input == "clear" or input == "cls" then
		io.write("\027[H\027[2J")

	elseif input == "exit" then
		break

	elseif #input == 0 then
		--- do nothing

	else
		print("Invalid command!")
	end

until tostring(input) == "!exit"

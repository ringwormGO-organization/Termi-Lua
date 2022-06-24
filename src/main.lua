---
--- @author Stjepan Bilić Matišić
--- @author Andrej Bartulin
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: Main file for Termi-Lua
---

-- LUA 5.1 MINIMUM
-- TERMI-LUA VERSION 0.1.0
--------------------------

local util = require("functions.utils.utils")
local os = require("functions.utils.os")

print("\n")
print("ooooooooooo                              ")
print("    888      ooooooooooo                          o88   ")
print("    888      888    88  oo oooooo  oo ooo oooo   oooo  ")
print("    888      888ooo8     888    888 888 888 888   888 ")
print("    888      888    oo   888        888 888 888   888  ")
print("   o888o    o888ooo8888 o888o      o888o888o888o o888o ")
print("                       0.1.0                           ")
print("-------------------------------------------------------")

io.write(" help ")
util.Print_commands()

local os_name, arch_name = os.get_os_name()

repeat
	io.write("Termi> ")
	
	local path = "functions/"
	local input = io.read()

	path = path .. tostring(input) .. ".lua"

	if util.Value(util.Commands, tostring(input)) and input ~= "exit" then
		dofile(path)

		if os_name ~= "Windows" then
			print("\27[32m\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Successfully executed!\27[0m")
		else
			os.execute("color 02")
			print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Successfully executed!")
			os.execute("color 07")
		end

	elseif input == "help" then
		dofile("help.lua")

		if os_name ~= "Windows" then
			print("\27[32m\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Successfully executed!\27[0m")
		else
			os.execute("color 02")
			print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Successfully executed!")
			os.execute("color 07")
		end

	elseif input == "clear" or input == "cls" then
		io.write("\027[H\027[2J")

	elseif input == "exit" then
		break

	elseif tonumber(input) == nil then
		--- do nothing

	else
		print("Invalid command!")
		
		if os_name ~= "Windows" then
			print("\27[31m\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Successfully executed!\27[0m")
		else
			os.execute("color 04")
			print("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Successfully executed!")
			os.execute("color 07")
		end
	end

until tostring(input) == "exit"

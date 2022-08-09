---
--- @author Stjepan Bilić Matišić
--- @author Andrej Bartulin
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: Main file for Termi-Lua
---

-- LUA 5.1 MINIMUM
-- TERMI-LUA VERSION 0.1.5
--------------------------

local util = require("functions.utils.utils")

print("\n")
print("ooooooooooo                              ")
print("    888      ooooooooooo                          o88   ")
print("    888      888    88  oo oooooo  oo ooo oooo   oooo  ")
print("    888      888ooo8     888    888 888 888 888   888 ")
print("    888      888    oo   888        888 888 888   888  ")
print("   o888o    o888ooo8888 o888o      o888o888o888o o888o ")
print("                       0.1.5                           ")
print("")
print("-------------------------------------------------------")

io.write(" help ")
util.Print_commands()

repeat
	io.write("Termi> ")
	
	local path = "functions."
	local input = io.read()
	local arg = util.Split(input, " ")

	path = path .. arg[1]

	if util.Value(util.Commands, arg[1]) and input ~= "exit" then
		local command = require(path)
		command.Run(arg)
		print("\27[32m\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Successfully executed!\27[0m")
		
	elseif input == "date" then
		local time = os.date()
		print(time)
		
	elseif input == "whois" then
		local usrnm = os.getenv('USERNAME');
		print(usrnm);

	elseif input == "help" then
		print("HELP: ")
		util.Print_commands()
		print("\27[32m\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Successfully executed!\27[0m")

	elseif input == "credits" then
		print("* @author(s): StjepanBM1, Andrej123456789")
		print("* PROJECT: Termi (Lua version)")
		print("* Licnese: ringwormGO General License 1.0 | (RGL) 2022")
		print("\27[32m\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Successfully executed!\27[0m")

	elseif input == "clear" or input == "cls" then
		io.write("\027[H\027[2J")

	elseif input == "exit" then
		break

	elseif tonumber(input) == nil then
		--- do nothing

	else
		print("Invalid command!")
		print("\27[31m\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Not successfully executed!\27[0m")
	end

until tostring(input) == "exit"

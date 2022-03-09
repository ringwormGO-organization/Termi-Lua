--
-- @author Stjepan Bilić Matišić
-- PROJECT: Termi-Lua
-- LICENSE: BSD-3-Clause-License
-- DESCRIPTION: Main file for Termi-Lua
--

ver = "0.0.5"

print("\n")
print("ooooooooooo                              ")
print("    888      ooooooooooo                          o88   ")
print("    888      888    88  oo oooooo  oo ooo oooo   oooo  ")
print("    888      888ooo8     888    888 888 888 888   888 ")
print("    888      888    oo   888        888 888 888   888  ")
print("   o888o    o888ooo8888 o888o      o888o888o888o o888o ")
print("-------------------------------------------------------")
print("	 Type '!help', '!credits', '!exit'")
print("-------------------------------------------------------")

repeat
	io.write("Termi> ")
	 
	input = io.read()

	if input == "!help" then
		dofile("functions/help.lua")

	elseif input == "!credits" then
		dofile("functions/credits.lua")

	elseif input == "!ver" then
		print(ver)

	elseif input == "createf" then
		dofile("functions/createf.lua")

	elseif input == "openf" then

	elseif input == "mkdir" then
		dofile("functions/mkdir.lua")

	elseif input == "rm" then
		dofile("functions/rm.lua")

	elseif input == "Opencalc" then

		dofile("functions/Calc.lua")

	elseif input == "OpenGeocalc" then
		dofile("functions/Geocalc.lua")

	else

	end

until tostring(input) == "!exit"

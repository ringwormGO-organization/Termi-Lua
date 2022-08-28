---
--- @author Stjepan Bilić Matišić
--- @author Andrej Bartulin
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: Caluclator file for Termi Lua
---

local calc = {}

function calc.Run(arg)
	local Calc = arg[2]

	if Calc == "+" then
		local num1 = tonumber(arg[3])
		local num2 = tonumber(arg[4])

		io.write("Result: ", num1 + num2, "\n")

	elseif Calc == "-" then
		local num1 = tonumber(arg[3])
		local num2 = tonumber(arg[4])

		io.write("Result: ", num1 - num2, "\n")

	elseif Calc == "*" then
		local num1 = tonumber(arg[3])
		local num2 = tonumber(arg[4])

		io.write("Result: ", num1 * num2, "\n")

	elseif Calc == "/" then
		local num1 = tonumber(arg[3])
		local num2 = tonumber(arg[4])

		io.write("Result: ", num1 / num2, "\n")

	else
		print("ERROR: COMMAND NOT FOUND")
	end
end

return calc

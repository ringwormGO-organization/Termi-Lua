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
		if arg[3] == nil or arg[4] == nil then
            print("ERROR: BAD ARGUMENTS!")
        else
			local num1 = tonumber(arg[3])
			local num2 = tonumber(arg[4])
	
			io.write("Result: ", num1 + num2, "\n")
        end

	elseif Calc == "-" then
		if arg[3] == nil or arg[4] == nil then
            print("ERROR: BAD ARGUMENTS!")
        else
			local num1 = tonumber(arg[3])
			local num2 = tonumber(arg[4])
	
			io.write("Result: ", num1 - num2, "\n")
        end

	elseif Calc == "*" then
		if arg[3] == nil or arg[4] == nil then
            print("ERROR: BAD ARGUMENTS!")
        else
			local num1 = tonumber(arg[3])
			local num2 = tonumber(arg[4])
	
			io.write("Result: ", num1 * num2, "\n")
        end

	elseif Calc == "/" then
		if arg[3] == nil or arg[4] == nil then
            print("ERROR: BAD ARGUMENTS!")
        else
			local num1 = tonumber(arg[3])
			local num2 = tonumber(arg[4])

			if num2 == 0 then
				print("ERROR: CANNOT DIVIDE WITH ZERO!")
			else
				io.write("Result: ", num1 / num2, "\n")
			end
	
        end

	else
		print("ERROR: BAD ARGUMENTS!")
	end
end

return calc

---
--- @author Stjepan Bilić Matišić
--- @author Andrej Bartulin
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: Caluclator file for Termi Lua
---

local calc = {}

--- Return first or second number
--- @param number integer
--- @return integer
function Get(number)
	if number ==  1 then
			return tonumber(tostring(io.read()))

	elseif number == 2 then
			return tonumber(tostring(io.read()))
	end
end

function calc.Run()
	print("Enter what function to do (+, -, *, /)")

	Calc = io.read()

	if Calc == "+" then
		print("Enter two numbers")
		io.write("Result: ", Get(1)+Get(2),"\n")

	elseif Calc == "-" then
		print("Enter two numbers")
		io.write("Result: ", Get(1)-Get(2),"\n")

	elseif Calc == "*" then
		print("Enter two numbers")
		io.write("Result: ", Get(1)*Get(2),"\n")

	elseif Calc == "/" then
		print("Enter two numbers")
		io.write("Result: ", Get(1)/Get(2),"\n")

	else
		print("ERROR: COMMAND NOT FOUND")

	end
end

return calc
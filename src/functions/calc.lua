---
--- @author Stjepan Bilić Matišić
--- @author Andrej Bartulin
--- @PROJECT: Termi-Lua
--- @LICENSE: BSD-3-Clause-License
--- @DESCRIPTION: Caluclator file for Termi Lua
---

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

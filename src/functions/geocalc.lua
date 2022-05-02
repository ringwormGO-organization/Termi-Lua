---
--- @author Stjepan Bilić Matišić
--- @PROJECT: Termi-Lua
--- @LICENSE: BSD-3-Clause-License
--- @DESCRIPTION: Geo caluclator file for Termi Lua
---

print("Enter what function to do (EXT, SRF)")

    GCalc = io.read()

    if GCalc == "EXT" then
        print("Enter what 2d shape you want (SQR, TRI, REC)")

        Shape = io.read()

        if Shape == "TRI" then

            print("Enter the lenght of all sides")

            local Num1 = io.read()
            local Num2 = io.read()
            local Num3 = io.read()

            io.write("Combined size of all sides: ", Num1+Num2+Num3, "\n")

        elseif Shape == "SQR" then

            print("Enter the lenght of all sides")

            local Num1 = io.read()

            io.write("Result: ", Num1*4, "\n")

        elseif Shape == "REC" then

            print("Enter the lenght of all sides")

            local Num1 = io.read()
            local Num2 = io.read()

            io.write("Result: ", Num1+Num2,"\n")

        else
            print("ERROR: COMMAND NOT FOUND")

        end


    else if GCalc == "SRF" then
        print("Enter what 2d shape you want (SQR, REC)")

        Shape2 = io.read()

        if Shape2 == "SQR" then

            print("Enter lenght of a side")

            local Num1 = io.read()

            io.write("Result: ", Num1*Num1,"\n")

        elseif Shape2 == "REC" then
            print("Enter two numbers")

                    local Num1 = io.read()
                    local Num2 = io.read()

                    io.write("Result: ", Num1*Num2,"\n")
        else
            print("ERROR: COMMAND NOT FOUND")

        end
    end
end

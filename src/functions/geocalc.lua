---
--- @author Stjepan Bilić Matišić
--- @author Andrej Bartulin
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: Geo caluclator file for Termi Lua
---

local geocalc = {}

    function geocalc.Run(arg)
        local gcalc = arg[2]
        local shape = arg[3]
        if gcalc == "EXT" then
            if shape == "TRI" then
                local num1 = tonumber(arg[4])
                local num2 = tonumber(arg[5])        
                local num3 = tonumber(arg[6])
                io.write("Combined size of all sides: ", num1 + num2 + num3, "\n")

            elseif shape == "SQR" then
                local num1 = tonumber(arg[4])   
                io.write("Result: ", num1 * 4, "\n")

            elseif shape == "REC" then
                local num1 = tonumber(arg[4])
                local num2 = tonumber(arg[5])        
                io.write("Result: ", num1 + num2,"\n")

            else
                print("ERROR: BAD ARGUMENTS!")
            end

        else if gcalc == "SRF" then
            if shape == "SQR" then
                local num1 = tonumber(arg[4])
                local num2 = tonumber(arg[5])        
                io.write("Result: ", num1 * num1, "\n")

            elseif shape == "REC" then
                local num1 = tonumber(arg[4])
                local num2 = tonumber(arg[5])        
                io.write("Result: ", num1 * num2, "\n")
            else
                print("ERROR: BAD ARGUMENTS!")
            end
        
        else
            print("ERROR: BAD ARGUMENTS!")
        end
    end
end

return geocalc

---
--- @author Stjepan Bilić Matišić
--- @author Andrej Bartulin
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: list command
---

local utils = require "functions.utils.utils"

local list = {}

    function list.Run(arg)
        if arg[2] == nil then
            print("ERROR: BAD ARGUMENTS!")
        else
            local p = utils.scandir(arg[2])
            if p ~= nil then
                for i = 1, utils.Length(p), 1 do
                    print(p[i])
                end
            else
                print("ERROR: ERROR OCCURED!")
            end
        end
    end

return list

---
--- @author Stjepan Bilić Matišić
--- @author Andrej Bartulin
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: list command
---

local utils = require "functions.utils.utils"

local list = {}

    list.temp_sys = {}

    function list.Run(arg)
        local p = io.popen('find "'..arg[2]..'" -type f')  --Open directory look for files, save data in p. By giving '-type f' as parameter, it returns all files.     
        for file in p:lines() do                           --Loop through all files
            table.insert(list.temp_sys, file)              --Add file to table      
        end

        if arg[4] == nil then
            for i = 1, utils.Length(list.temp_sys), 1 do
                print(" ")
                print(list.temp_sys[i])
            end
            for k, v in pairs(list.temp_sys) do list.temp_sys[k]=nil end
        end
    end

return list
---
--- @author Stjepan Bilić Matišić
--- @author Andrej Bartulin
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: find command
---

local utils = require("functions.utils.utils")
local list = require("functions.list")

local find = {}

    function find.Run(arg)
        local temp_arg = {};
        
        table.insert(temp_arg, arg[2]) -- path
        table.insert(temp_arg, arg[3]) -- file/directory name
        table.insert(temp_arg, "!") -- don't print anythng

        list.Run(temp_arg)

        if utils.Value(list.temp_sys, arg[3]) == true then
            io.write("File/Directory '")
            io.write(arg[2])
            io.write("' found!\n")
        end
    end

return find

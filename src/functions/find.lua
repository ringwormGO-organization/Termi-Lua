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

        if arg[2] == nil or arg[3] == nil then
            print("ERROR: BAD ARGUMENTS!")
        else
            table.insert(temp_arg, arg[2]) -- path
            table.insert(temp_arg, arg[3]) -- file/directory name
            list.Run(temp_arg)
        end
    end

return find

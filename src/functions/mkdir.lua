---
--- @author Stjepan Bilić Matišić
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: File to crate new folder for Termi Lua
---

local mkdir = {}

local util = require("functions.utils.utils")

function mkdir.Run(arg)
    for i = 2, util.Length(arg), 1 do
        if arg[i] == nil then
            print("ERROR: BAD ARGUMENTS!")
        else
            local dirname = arg[i]
            os.execute(util.mkdir_command(dirname))
        end
    end

end

return mkdir

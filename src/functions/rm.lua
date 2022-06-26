---
--- @author Stjepan Bilić Matišić
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: File to remove something for Termi Lua
---

local rm = {}

local util = require("functions.utils.utils")

function rm.Run(arg)
    for i = 2, util.Length(arg), 1 do
        local path = arg[i]
        os.remove(path)
    end

end

return rm

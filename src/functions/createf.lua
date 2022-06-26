---
--- @author Stjepan Bilić Matišić
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: File to create new files for Termi Lua
---

local createf = {}

local util = require("functions.utils.utils")

function createf.Run(arg)
    for i = 2, util.Length(arg), 1 do
        local openf = arg[i]
        local file = io.open(openf,"w")
    end
end

return createf
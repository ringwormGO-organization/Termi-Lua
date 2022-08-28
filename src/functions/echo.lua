---
--- @author Stjepan Bilić Matišić
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: echo command file
---

local echo = {}

local util = require("functions.utils.utils")

function echo.Run(arg)
    for i = 2, util.Length(arg), 1 do
        io.write(arg[i], " ")
    end

end

return echo

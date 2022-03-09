---
--- @author Stjepan Bilić Matišić
--- @PROJECT: Termi-Lua
--- @LICENSE: BSD-3-Clause-License
--- @DESCRIPTION: File to create new files for Termi Lua
---

io.write("> ")
openf = io.read()

file = io.open(openf,"w")
file:close()

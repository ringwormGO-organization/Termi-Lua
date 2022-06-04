---
--- @author Stjepan Bilić Matišić
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: File to create new files for Termi Lua
---

io.write("> ")
openf = io.read()

file = io.open(openf,"w")
file:close()

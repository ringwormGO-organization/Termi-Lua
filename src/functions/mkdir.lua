---
--- @author Stjepan Bilić Matišić
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: File to crate new folder for Termi Lua
---

io.write("> ")
dirname = io.read()
os.execute("mkdir " .. dirname)

---
--- @author Stjepan Bilić Matišić
--- @PROJECT: Termi-Lua
--- @LICENSE: BSD-3-Clause-License
--- @DESCRIPTION: File to remove something for Termi Lua
---

io.write("> ")
path = io.read()
os.remove(path)

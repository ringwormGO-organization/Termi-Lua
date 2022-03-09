--
-- @author Stjepan Bilić Matišić
-- PROJECT: Termi-Lua
-- LICENSE: BSD-3-Clause-License
-- DESCRIPTION: File to crate new folder for Termi Lua
--

io.write("> ")
dirname = io.read()
os.execute("mkdir " .. dirname)

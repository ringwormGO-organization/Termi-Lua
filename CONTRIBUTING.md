## Add new command
1. In `functions` folder create new file which is called same as command name
2. Open `utils.lua` and in `Commands` table add name of command (don't worry about alphabetical order, Termi-Lua will sort it)
3. Follow example:

```lua
local name_of_command_which_you_put_in_Commands_table = {}

function name_of_command_which_you_put_in_Commands_table.Run(arg) 
--- functions which name is `Run` are main functions for command
--- your code
end

return name_of_command_which_you_put_in_Commands_table
```

4. Don't forget on `arg` which is `table` and argument for functions
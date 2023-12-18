# How to start contributing
Just drop a Pull Request :)

# Pull Request style
1. Use LF. Set up your Git settings with this: `git config --global core.autocrlf false` and check if it is OK by `git config --global core.autocrlf`. It need to return `false` or nothing.
2. Use spaces, size 4

## Port Termi to new platform
1. Navigate to `utils.lua`,
2. change `os` variable in top of `utils.lua`,
3. find unimplemented portion of code,
4. add `if` statement for new platform.
5. Example:
```lua

local os = "your_os"

-- bunch of code

function util.some_function(path)
    if os == "windows" then
        -- code

    elseif os == "linux" then
        -- code

    elseif os == "your_os" then -- new part of the code
        -- code

    else
        -- code
    end
end

```
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

# Coding sytle for Pull Requests
### Indentation and line width
1. Line width much be at most **100** characters.
2. Use spaces, spaces size **MUST BE** 4!

When a function call does not fit onto a line, align arguments like this:

```lua
FunctionCall(arg1,
             arg2,
             arg3);
```

When making new functions, declare return parameter and all params in `utils.lua`

Right:
```lua
--- Return how many elements table (list) has
--- @param str string
--- @return string
function example(str)
    return str
end
```
Wrong:
```lua
function example(str)
    return str
end
```

### Spacing
1. Place spaces around binary and ternary operators.

**Right:** `a = b + c;`

**Wrong:** `a=b+c;`

2. Do not place spaces between a function and its parentheses, or between a parenthesis and its content.

Right:

`func(a, b);`

Wrong:

```lua
func (a, b);
func( a, b );
```

### Control structures
1. Don’t use inverse logic in control clauses.

**Right:** `if i == 1`

**Wrong:** `if 1 == i`

### Naming
*Part called "Naming" is written by ringwormGO itself*

#### Naming functions
1. Name a function by capital letter.

**Right:** `void Test();`

**Wrong:** `void test();`

#### Naming tables and variables
2. Name tables with cappital letter and variables which lowercase letter

**Right:**
```lua
local Table = {};
local number;
```

**Wrong:**
```lua
local table = {};
local Number;
```

### Commenting
*Part called "Commenting" is written by ringwormGO itself*

1. For comments on top of file use this:
```lua
---
--- @author John
--- @PROJECT: Termi-Lua
--- @LICENSE: ringwormGO General License 1.0 | (RGL) 2022
--- @DESCRIPTION: Example
---
```

### Resources used for this coding style:
* https://reactos.org/wiki/Coding_Style (some parts are modificeted)

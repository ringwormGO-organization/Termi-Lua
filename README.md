# Termi-Lua
Lua version of Termi

## Build & Run
### Required software:
- Lua (minium Lua 5.1)
  - Install with ```sudo apt-get install lua5.4``` if not already installed on GNU/Linux machine, Debian based.
- Git
  - Install with ```sudo apt-get install git``` if not already installed on GNU/Linux machine, Debian based.
- ANSI supported terminal
  - You can use Termi-Lua without ANSI characters but then colors are unavailable; warning for Windows users, use Windows Terminal. 

### Build & Run - Windows & Linux
- Open terminal (on Windows ```cmd``` because it support ```&&```) in root directory of repo and type:
```sh
$ cd src && lua main.lua
```

## Add new command
1. In `functions` folder create new file which is called same as command name
2. Open `utils.lua` and in `Commands` table add name of command (don't worry about alphabetical order, Termi-Lua will sort it)

## Advantages and cons over Termi's C++ version
### Advantages
1. Less resources intensive
2. Easier to port

### Cons
1. Less commands
2. Slower development

### Advantages/Cons
*it can be for someone advantages or cons for other*
1. Does not have own terminal window

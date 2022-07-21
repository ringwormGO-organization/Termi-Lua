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

## Users which use/ported Termi-Lua
- [Lithicsoft-Inc](https://github.com/Lithicsoft-Inc)
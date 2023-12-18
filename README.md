# Termi-Lua
Lua version of Termi

[Stable version 1.0.0](https://github.com/ringwormGO-organization/Termi-Lua/releases/tag/v1.0.0)

## Build & Run
### Required software:
- Lua (minium Lua 5.1)
  - Install with ```sudo apt-get install lua5.4``` if not already installed on GNU/Linux machine, Debian based.
- Git
  - Install with ```sudo apt-get install git``` if not already installed on GNU/Linux machine, Debian based.
- ANSI supported terminal
  - You can use Termi-Lua without ANSI characters but then colors and option to clear screen are unavailable; warning for Windows users, use Windows Terminal if you can.

### Build & Run - macOS/BSD/(GNU/)Linux
- Open terminal in `src` directory of repo and type:
```sh
$ lua main.lua
```

### Build & Run - other platforms
- Change name of platform in `utils.lua`
- Open terminal in `src` directory and run lua executable with argument: `main.lua`

## Advantages and cons over Termi's C++ version
### Advantages
1. Less resources intensive
2. Easier to port (filesys commands might be broken, see [CONTRIBUTING.md](https://github.com/ringwormGO-organization/Termi-Lua/blob/main/CONTRIBUTING.md))

### Cons
1. Less commands
2. Slower development

### Advantages/Cons
*it can be for someone advantage or cons for other*
1. Does not have own terminal window

## Users which use(d)/ported Termi-Lua
- [Lithicsoft](https://github.com/Lithicsoft)

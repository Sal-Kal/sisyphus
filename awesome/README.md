# Awesome WM
[Awesome](https://awesomewm.org/) is a dynamic and extensible tiling window manager for X Window System.

## Requirements

### 1. Picom
[Picom](https://en.wikipedia.org/wiki/Picom) is a lightweight X11 compositor with transparency, shadows, and other visual effects for window management on Linux desktops. I prefer using the [jonaburg](https://github.com/jonaburg/picom) fork of picom.
If you prefer a different compositor, replace `picom` with a compositor of your choice in the following line of the `rc.lua` file. Alternatively, remove the line to forgo using any compositor.
```
awful.spawn.with_shell("picom")
```
### 2. Kitty & TMUX
[Kitty](https://sw.kovidgoyal.net/kitty/) is a fast, feature-rich, and highly customizable terminal emulator. 
[TMUX](https://github.com/tmux/tmux/wiki) is a terminal multiplexer that enables multiple virtual terminals within a single session for efficient command-line multitasking.
This configuration sets `kitty` launched with `tmux` as your default terminal. If you prefer any other terminal as your default, update the following line in the `rc.lua` file.
```
terminal = "kitty tmux -u"
```
Replace `kitty tmux -u` with your preferred terminal command.
## Applying the configuration
To apply these configurations, place the `awesome` directory from the root of this Git repository into `~/.config/`.


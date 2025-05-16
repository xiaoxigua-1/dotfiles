# Xiao xigua's dotfiles

## Neovim

Neovim config taken from [craftzdog](https://github.com/craftzdog/dotfiles-public)

### Requirements

- Neovim >= **0.9.0** (needs to be built with **LuaJIT**)
- Git >= **2.19.0** (for partial clones support)
- [LazyVim](https://www.lazyvim.org/)
- a [Nerd Font](https://www.nerdfonts.com/)(v3.0 or greater) **_(optional, but needed to display some icons)_**
- [lazygit](https://github.com/jesseduffield/lazygit)
- a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)
- for [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
  - **live grep**: [ripgrep](https://github.com/BurntSushi/ripgrep)
  - **find files**: [fd](https://github.com/sharkdp/fd)
- a terminal that support true color and *undercurl*:
  - [kitty](https://github.com/kovidgoyal/kitty) **_(Linux & Macos)_**
  - [wezterm](https://github.com/wez/wezterm) **_(Linux, Macos & Windows)_**
  - [alacritty](https://github.com/alacritty/alacritty) **_(Linux, Macos & Windows)_**
  - [iterm2](https://iterm2.com/) **_(Macos)_**

## Hyprland setup

### Requirements

- [Fcitx5](https://github.com/fcitx/fcitx5) (Fcitx 5 is a generic input method framework released under LGPL-2.1+.)
- [hyprpaper](https://wiki.hyprland.org/Hypr-Ecosystem/hyprpaper/) (Wallpaper daemon)
- [hyprlock](https://github.com/hyprwm/hyprlock) (Lock screen)
- [hypridle](https://github.com/hyprwm/hypridle) (Idle daemon)
- [kitty](https://github.com/kovidgoyal/kitty) (Cross-platform, fast, feature-rich, GPU based terminal)
- [Walker](https://github.com/abenz1267/walker) (A wayland native, highly customizable and extensible runner)
- [Yazi](https://github.com/sxyazi/yazi) (Blazing fast terminal file manager written in Rust, based on async I/O.)
- [cliphist](https://github.com/sentriz/cliphist) (Wayland clipboard manager)
- [slurp](https://github.com/emersion/slurp) (Basic area selection tool)
- [Grim](https://git.sr.ht/~emersion/grim) (Basic screenshot tool)

### Cursor

[cursor-lib](https://github.com/xiaoxigua-1/cursor-lib)

### eww setup

#### Requirements

- a [Nerd Font](https://www.nerdfonts.com/)(v3.0 or greater) **_(optional, but needed to display some icons)_**
- [amixer](https://wiki.archlinux.org/title/Advanced_Linux_Sound_Architecture)
- [jq](https://github.com/jqlang/jq) (Command-line JSON processor)
- [OpenRazer](https://openrazer.github.io/) **Optional**

## Yazi setup

### Requirements

- [ouch](https://github.com/ouch-org/ouch)
- [bat](https://github.com/sharkdp/bat)
- [glow](https://github.com/charmbracelet/glow)
- [MediaInfo](https://mediaarea.net/en/MediaInfo)

### Installation

Install all the plugins with locked versions from package.toml

```sh
ya pack -i
```

## kitty

Kitty tab bar style taken from [dhay3](https://github.com/kovidgoyal/kitty/discussions/4447#discussioncomment-10428277)

## Fish shell

Fish shell config taken from [craftzdog](https://github.com/craftzdog/dotfiles-public)

- [fnm](https://github.com/Schniz/fnm)
- [zoxide](https://github.com/ajeetdsouza/zoxide)

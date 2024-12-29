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
- [Fcitx5](https://github.com/fcitx/fcitx5)
- [hyprpaper](https://wiki.hyprland.org/Hypr-Ecosystem/hyprpaper/)
- [hyprlock](https://github.com/hyprwm/hyprlock)
- [hypridle](https://github.com/hyprwm/hypridle)
- [kitty](https://github.com/kovidgoyal/kitty)
- [Walker](https://github.com/abenz1267/walker)
- [Yazi](https://github.com/sxyazi/yazi)
- [cliphist](https://github.com/sentriz/cliphist)
- [Waybar](https://github.com/Alexays/Waybar)

### Waybar setup
#### Requirements
- [pamixer](https://github.com/cdemoulins/pamixer)
- [wlogout](https://github.com/ArtsyMacaw/wlogout)

## Yazi setup

### Requirements
- [ouch](https://github.com/ouch-org/ouch)
- [exiftool](https://exiftool.org/)
- [MediaInfo](https://mediaarea.net/en/MediaInfo) **Optional**

### Installation
Install all the plugins with locked versions from package.toml
```sh
ya pack -i
```

## kitty
Kitty tab bar style taken from [dhay3](https://github.com/kovidgoyal/kitty/discussions/4447#discussioncomment-10428277)

## Fish shell
Fish shell config taken from [craftzdog](https://github.com/craftzdog/dotfiles-public)

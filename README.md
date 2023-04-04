## Install

```sh
brew install neovim
brew install ripgrep # is required for grep searching with Telescope (OPTIONAL).
git clone git@github.com:recats/neovim-nvchad.git ~/.config/nvim --depth 1 && nvim
```

## Uninstall

```sh
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

## Configuration

```sh
cd ~/.config/nvim/lua/custom/
# configs/overrides.lu there is a custom config for plugins which includes in configs/plugins.lua
# mappings.lua there is a custom hotkeys
```

## Hotkeys

```sh
## <leader>ch
```

## Plugins | Mason update

```sh
sudo nvim

:Lazy update
:Lazy sync

:MasonInstallAll
:TSInstall vue tsx go
```

## Plugins list

- [Chat gpt](https://github.com/jackMort/ChatGPT.nvim)
- [Symbols in right tree](https://github.com/simrat39/symbols-outline.nvim)
- [Todos and etc](https://github.com/folke/todo-comments.nvim)
- [Troubles](https://github.com/folke/trouble.nvim)
- [Copilot](https://github.com/zbirenbaum/copilot.lua)

## ChatGPT settings

```sh
# generate a token https://platform.openai.com/account/api-keys

export OPENAI_API_KEY=""

# ~/.zshrc
# export OPENAI_API_KEY=""

# hotkey is `<leader>gg`
# ./lua/custom/mappings.lua
```

## Spellcheck

```sh
:set spelllang=en_us,cjk
## [s go to prev spell error
## ]s go to next spell error
```

## Copilot

```sh
# use this command for auth
:Copilot auth

## accpet suggestion
## Control + v
## <C+v>

## config in ~/.config/nvim/lua/custom/plugins.lua
```

## Terminal

<details>
  <summary>ITerm2</summary>

> we could not recommend to use iterm2, better to use [kitty](https://github.com/kovidgoyal/kitty) or [alacritty](https://github.com/alacritty/alacritty) instead

```sh
## color preset for iterm (better with recats theme in neovim)
## https://github.com/catppuccin/iterm/blob/main/colors/catppuccin-mocha.itermcolors
```

</details>
<details>
  <summary>Kitty</summary>

~/.config/kitty/kitty.conf

```sh
font_family JetBrainsMono Nerd Font
font_size 12.0

# https://github.com/kovidgoyal/kitty/blob/master/nerd-fonts-glyphs.txt
cursor #00ffcb
cursor_text_color #000002
tab_bar_min_tabs            1
tab_bar_edge                bottom
tab_bar_style               powerline
tab_powerline_style         slanted
tab_title_template          {title}{' :{}:'.format(num_windows) if num_windows > 1 else ''}
font_features FiraCode-Retina +cv02 +cv05 +cv09 +cv14 +ss04 +cv16 +cv31 +cv25 +cv26 +cv32 +cv28 +ss10 +zero +onum

map cmd+enter toggle_fullscreen
map cmd+d new_window
```

[~/.config/kitty/theme.conf](https://github.com/catppuccin/kitty/blob/main/themes/mocha.conf)

</details>

<details>
  <summary>Alacritty</summary>

~/.config/alacritty/alacritty.yml

```yml
import:
  - ~/.config/alacritty/catppuccin/catppuccin-mocha.yml
font:
  normal:
    family: "FiraCode Nerd Font"
    style: "Light"
  bold:
    family: "FiraCode Nerd Font"
    style: "Regular"
  #normal:
  #  family: "JetBrainsMono Nerd Font"
  #  style: "ExtraLight"
  #italic:
  #  family: "JetBrainsMono Nerd Font"
    style: "ExtraLight italic"
  #bold:
  #  family: "JetBrainsMono Nerd Font"
    style: "Light"
  #bold_italic:
  #  family: "JetBrainsMono Nerd Font"
  #  style: "Light italic"
  offset:
    x: 0
    y: 5

  size: 11.0

# better font view
# defaults -currentHost write -g AppleFontSmoothing -int 0
#
custom_cursor_colors: true

window:
  decorations: buttonless
  dynamic_padding: false

colors:
  cursor:
    text: "#1E1E2E"
    cursor: "#00ffcb"

key_bindings:
  - { key: V,        mods: Command,       action: Paste                        }
  - { key: C,        mods: Command,       action: Copy                         }
  - { key: Return,   mods: Command,       action: ToggleFullscreen             }
```

[~/.config/alacritty/catppuccin](https://github.com/catppuccin/alacritty)

</details>

## Fonts

[Fira-Code-Nerd-font.zip](https://github.com/recats/neovim-nvchad/files/11148957/fira-code.zip)
[JeBrainsMono-Nerd-font.zip](https://github.com/recats/neovim-nvchad/files/11135856/JeBrainsMono-Nord-font.zip)

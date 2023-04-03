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

## iterm2 Configuration

> we could not recommend to use iterm2, better to use [kitty](https://github.com/kovidgoyal/kitty) instead

```sh
## color preset for iterm (better with recats theme in neovim)
## https://github.com/catppuccin/iterm/blob/main/colors/catppuccin-mocha.itermcolors
```

## Kitty config

~/.config/kitty/kitty.conf

```sh
font_family Fira Code
font_size 12.0
symbol_map U+23FB-U+23FE,U+2665,U+26A1,U+2B58,U+E000-U+E00A,U+E0A0-U+E0A3,U+E0B0-U+E0C8,U+E0CA,U+E0CC-U+E0D2,U+E0D4,U+E200-U+E2A9,U+E300-U+E3E3,U+E5FA-U+E634,U+E700-U+E7C5,U+EA60-U+EBEB,U+F000-U+F2E0,U+F300-U+F32F,U+F400-U+F4A9,U+F500-U+F8FF Symbols Nerd Font Mono
cursor #00ffcb
cursor_text_color #000002
tab_bar_min_tabs            1
tab_bar_edge                bottom
tab_bar_style               powerline
tab_powerline_style         slanted
tab_title_template          {title}{' :{}:'.format(num_windows) if num_windows > 1 else ''}
font_features FiraCode-Retina +cv02 +cv05 +cv09 +cv14 +ss04 +cv16 +cv31 +cv25 +cv26 +cv32 +cv28 +ss10 +zero +onum
```

[~/.config/kitty/theme.conf](https://github.com/catppuccin/kitty/blob/main/themes/mocha.conf)

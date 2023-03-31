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

```sh
## color preset for iterm (better with recats theme in neovim)
## https://github.com/catppuccin/iterm/blob/main/colors/catppuccin-mocha.itermcolors
```

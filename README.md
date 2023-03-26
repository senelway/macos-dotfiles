## Install
```sh
brew install neovim
brew install ripgrep # is required for grep searching with Telescope (OPTIONAL).
git clone https://github.com/recats/neovim-nvchad ~/.config/nvim --depth 1 && nvim
```

## Uninstall
```sh
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

## Config
```sh
cd ~/.config/nvim/lua/custom/
# configs/overrides.lu there is a custom config for plugins which includes in configs/plugins.lua
# mappings.lua there is a custom hotkeys
```

## Plugins | Mason update
```sh
sudo nvim

:Lazy update
:Lazy sync

:MasonInstallAll
```
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
[s go to prev spell error
]s go to next spell error
```

## Copilot
```sh
# use this command for auth
:Copilot auth

## accpet suggestion
## Control + p
## <C+p>

## config in ~/.config/nvim/lua/custom/plugins.lua
```

## ITerm2 Config
```sh
## color preset for iterm (better with recats theme in neovim)
## https://github.com/catppuccin/iterm/blob/main/colors/catppuccin-mocha.itermcolors
```


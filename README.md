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

## Basic Hotkeys
```sh
<leader> is SPACE
<leader> ch # open cheetshet
<leader> / # comment line
<leader> v # open terminal
ge # show errors

>> # or 3>> move line to right
<< # or 3<< move line to left
```

## Config
```sh
cd ~/.config/nvim/lua/custom/
# configs/overrides.lu there is a custom config for plugins which includes in configs/plugins.lua
# mappings.lua there is a custom hotkeys
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
<img width="946" alt="image" src="https://user-images.githubusercontent.com/9702154/227250844-fc5568bd-26b8-45ca-9999-e0dc84ee0dca.png">

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

# hotkey is `gpt`
# ./lua/custom/mappings.lua
```

## Install

```sh
brew install neovim
brew install ripgrep # is required for grep searching with Telescope (OPTIONAL).

git clone git@github.com:senelway/dotfiles.git ~/.config/_tmp
cd ~/.config/_tmp
mv nvim ../nvim
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

## All Hotkeys

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

- [Custom](https://github.com/senelway/dotfiles/blob/main/nvim/lua/custom/plugins.lua)
- [Base](https://github.com/senelway/dotfiles/blob/main/nvim/lua/plugins/init.lua)

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

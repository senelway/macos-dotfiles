## Fonts

[Fira-Code-Nerd-font.zip](https://github.com/recats/neovim-nvchad/files/11148957/fira-code.zip)

[JeBrainsMono-Nerd-font.zip](https://github.com/recats/neovim-nvchad/files/11135856/JeBrainsMono-Nord-font.zip)

## .ideavim

```sh
ln ~/.config/.ideavimrc ~/
```

## Tailing manager

```sh
brew install koekeishiya/formulae/yabai
yabai --start-service

# hotkeys for yabai
brew install koekeishiya/formulae/skhd
skhd --start-service
```

### FZF
```sh
alias cdf='cd $(find ~/Projects -type d -maxdepth 4 -not -path "*/.git/*" -not -path "*/node_modules/*" | fzf)'
alias cdv='cd $(find ~/Projects -type d -maxdepth 4 -not -path "*/.git/*" -not -path "*/node_modules/*" | fzf) && nvim .'

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!{.git,node_modules,vendor,.vscode,*.log,*.pyc,*.o,*.tmp,.DS_Store,Library,
.orbstack,.password-store}"'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
```

## NVIM [repo](https://github.com/senelway/nvim)
```
git clone git@github.com:senelway/nvim.git
```

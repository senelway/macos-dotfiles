return {
  'catppuccin/nvim',
  name = 'catppuccin',
  config = function()
    require('catppuccin').setup {}
  end,
  init = function()
    vim.cmd.colorscheme 'catppuccin'
  end
}

return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {}
  end,
  init = function()
    vim.cmd.colorscheme 'catppuccin-mocha'
  end
}

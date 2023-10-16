return {
  'catppuccin/nvim',
  name = 'catppuccin',
  config = function()
    require('catppuccin').setup {}
    vim.cmd.colorscheme 'catppuccin'
  end,
}

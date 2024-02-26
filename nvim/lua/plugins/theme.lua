return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  opts = {},
  init = function()
    vim.cmd.colorscheme 'catppuccin'
  end,
}

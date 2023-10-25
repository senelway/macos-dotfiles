return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  opts = {
    options = {
      icons_enabled = false,
      theme = 'catppuccin-mocha',
      component_separators = '|',
      section_separators = '',
    },
  },
}

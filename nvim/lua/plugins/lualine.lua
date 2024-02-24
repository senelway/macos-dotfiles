return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      component_separators = '|',
    },
    sections = {
      lualine_c = { { 'filename', path = 4 } },
    },
  },
}

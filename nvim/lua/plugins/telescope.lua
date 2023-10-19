return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },
  config = function()
    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ['<C-u>'] = false,
            ['<C-d>'] = false,
          },
        },
        layout_config = {
          horizontal = {
            prompt_position = 'top',
          },
        },
        sorting_strategy = 'ascending',
        layout_strategy = 'horizontal',
        file_ignore_patterns = { "node_modules", ".git" },
      },
    }
  end,
}

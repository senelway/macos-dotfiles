return {
  'nvim-neotest/neotest',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-go',
    -- 'marilari88/neotest-vitest',
    -- 'rouge8/neotest-rust',
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-go',
        -- require 'neotest-vitest',
        -- require 'neotest-rust',
      },
    }

    vim.keymap.set('n', '<leader>tr', ':Neotest run<CR>', { noremap = true }, '[T]est [R]run')
    vim.keymap.set('n', '<leader>ts', ':Neotest summary<CR>', { noremap = true }, '[T]est [S]ummary')
  end,
}

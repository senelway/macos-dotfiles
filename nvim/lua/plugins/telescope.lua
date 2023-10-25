vim.keymap.set('n', '<leader>?', function() require('telescope.builtin').oldfiles() end,
  { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', function() require('telescope.builtin').buffers() end,
  { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>sb', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown { winblend = 10, previewer = false })
end, { desc = 'Fuzzily search in current [B]uffer' })

vim.keymap.set('n', '<leader>gs', function() require('telescope.builtin').git_files() end,
  { desc = '[S]earch [G]it Files' })
vim.keymap.set('n', '<leader>sf', function() require('telescope.builtin').find_files() end, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sa',
  function() require('telescope.builtin').find_files({ follow = true, no_ignore = true, hidden = true, }) end,
  { desc = '[S]earch [A]ll' })
vim.keymap.set('n', '<leader>sh', function() require('telescope.builtin').help_tags() end, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', function() require('telescope.builtin').grep_string() end,
  { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', function() require('telescope.builtin').live_grep() end,
  { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', function() require('telescope.builtin').diagnostics() end,
  { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', function() require('telescope.builtin').resume() end, { desc = '[S]earch [R]esume' })

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
  event = 'VeryLazy',
  config = function()
    require('telescope').load_extension('fzf')
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

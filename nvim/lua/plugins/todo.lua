vim.keymap.set('n', '<leader>st', ':TodoTrouble<CR>', { desc = '[S]earch [T]odo' })

return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  vent = { 'BufReadPost', 'BufNewFile' },
  opts = {},
}

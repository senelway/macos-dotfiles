vim.keymap.set('n', '<leader>st', ':TodoQuickFix<CR>', { desc = '[S]earch [T]odo' })

return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = { signs = false },
}

vim.keymap.set('n', '<leader>/', ":lua require('Comment.api').toggle.linewise.current()<CR>",
  { noremap = true, silent = true, desc = 'Comment line' })
vim.keymap.set('v', '<leader>/', "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
  { noremap = true, silent = true, desc = 'Comment line' })

return {
  'numToStr/Comment.nvim',
  opts = {},
  lazy = true,
  event = 'InsertEnter',
}

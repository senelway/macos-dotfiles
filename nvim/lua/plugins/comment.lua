vim.keymap.set('n', '<leader>/', ":lua require('Comment.api').toggle.linewise.current()<CR>", { noremap = true, silent = true })

return {
  'numToStr/Comment.nvim',
  opts = {},
  lazy = false,
}

vim.keymap.set('n', '<leader>i', function() require("nvterm.terminal").toggle "float" end,
  { desc = '[I] Term toggle floating' })
vim.keymap.set('t', '<C-q>', vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true),
  { desc = 'Exit edit mode in terminal', nowait = true })
vim.keymap.set('n', '<leader>tt', ":terminal<CR>", { desc = '[T]erminal classic mode' })

return {
  "NvChad/nvterm",
  config = function()
    require("nvterm").setup()
  end,
}

vim.keymap.set('n', '<leader>i', ':lua require("nvterm.terminal").toggle "float"<CR>', { noremap = true, silent = true })

return {
  'NvChad/nvterm',
  config = function()
    require("nvterm").setup()
  end
}

vim.api.nvim_set_keymap('n', '<leader>ha', ":lua require('harpoon.mark').add_file()<CR>",
  { desc = "[A]dd to [H]arpoon list" })
vim.api.nvim_set_keymap('n', '<leader>hf', ":lua require('harpoon.ui').toggle_quick_menu()<CR>",
  { desc = "[F]ind [H]arpoon`ed" })
vim.api.nvim_set_keymap('n', '<C-p>', ":lua require('harpoon.ui').nav_next()<CR>",
  { desc = "[P]revious in Harpoon list" })
vim.api.nvim_set_keymap('n', '<C-u>', ":lua require('harpoon.ui').nav_prev()<CR>", { desc = "[U] Next in Harpoon list" })

return {
  'ThePrimeagen/harpoon',
  config = function()
    require('harpoon').setup {}
  end,
}

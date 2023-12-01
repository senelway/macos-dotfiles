return {
  'ThePrimeagen/harpoon',
  event = 'VeryLazy',
  branch = "harpoon2",
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = "[A]dd to [H]arpoon list" })
    vim.keymap.set("n", "<leader>ss", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
      { desc = "[F]ind [H]arpoon" })
    vim.keymap.set('n', '<C-u>', function() harpoon:list():next() end, { desc = "[U] Next in Harpoon list" })
    vim.keymap.set('n', '<C-p>', function() harpoon:list():prev() end, { desc = "[P]revious in Harpoon list" })
  end,
}

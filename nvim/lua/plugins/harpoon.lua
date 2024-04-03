return {
  'ThePrimeagen/harpoon',
  event = 'VeryLazy',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup {
      settings = {
        save_on_toggle = true,
        save_on_change = true,
        mark_branch = true,
      },
    }

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():append()
    end, { desc = '[A]dd to [H]arpoon list' })

    vim.keymap.set('n', '<leader>sm', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = '[F]ind [H]arpoon' })

    vim.keymap.set('n', '<C-n>', function()
      harpoon:list():next()
    end, { desc = '[U] Next in Harpoon list' })

    vim.keymap.set('n', '<C-p>', function()
      harpoon:list():prev()
    end, { desc = '[P]revious in Harpoon list' })
  end,
}

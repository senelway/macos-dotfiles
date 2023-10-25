vim.keymap.set('n', '<leader>lg', function() require("lazygit").lazygit() end, { desc = '[L]azy [G]it' })

return {
  "kdheepak/lazygit.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}

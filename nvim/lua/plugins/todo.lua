vim.keymap.set('n', '<leader>st', ':TodoQuickFix<CR>', { desc = "[S]earch [T]odo" })

return {
  "folke/todo-comments.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require('todo-comments').setup {}
  end,
}

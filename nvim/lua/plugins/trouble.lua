vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end,
  { desc = "Workspace diagnostic" })
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end,
  { desc = "Docuemnt diagnostic" })

return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },

}

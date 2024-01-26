return {
  dir = '~/.config/nvim/lua/plugins/giter',
  event = 'VeryLazy',
  config = function()
    local giter = require("giter")
    giter:setup()

    vim.keymap.set("n", "<leader>gep", function() giter:open_pr_list() end, { desc = "Open github pr list" })
  end

}

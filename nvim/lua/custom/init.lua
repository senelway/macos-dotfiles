-- local autocmd = vim.api.nvim_create_autocmd
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
--

require("custom.utils.browser").load()

vim.opt.mouse = ""
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.swapfile = false
vim.g.vscode_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snippets"

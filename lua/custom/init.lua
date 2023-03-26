local autocmd = vim.api.nvim_create_autocmd
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
--
autocmd("BufWritePre", {
  pattern = {
    -- languages
    "*.lua",
    "*.go",
    "*.ts",
    -- frameworkds
    "*.vue",
    "*.tsx",
    -- styles
    "*.css",
    "*.scss",
    "*.pcss",
  },
  command = "lua vim.lsp.buf.formatting(nil)",
})

autocmd("BufEnter", {
  pattern = "*",
  command = "set title",
})



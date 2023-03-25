local autocmd = vim.api.nvim_create_autocmd
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
--
autocmd("BufWritePre", {
  -- NOTE: add another languages
  pattern = { "*.lua", "*.go" },
  command = "lua vim.lsp.buf.formatting(nil)",
})

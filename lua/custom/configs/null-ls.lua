local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- webdev stuff
  b.formatting.prettier.with {
    -- TODO: migrate to ROME
    bin = "prettierd",
    filetypes = { "html", "markdown", "css", "ts", "tsx", "vue", "pcss", "scss" },
    cli_options = {
      config_precedence = "prefer-file",
    },
  }, -- so prettier works only on these filetypes

  -- frontend
  b.formatting.eslint_d,
  b.diagnostics.eslint_d,

  -- Lua
  b.formatting.stylua,

  -- golang
  b.formatting.gofumpt,
  b.formatting.goimports,

  -- NOTE: c#
  -- b.formatting.csharpier
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = vim.lsp.buf.formatting,
      })
    end
    vim.api.nvim_create_autocmd("VimLeavePre", {
      group = augroup,
      command = "silent !eslint_d restart",
    })
  end,
}

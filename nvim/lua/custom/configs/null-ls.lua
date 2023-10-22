local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  b.formatting.prettierd.with {
    filetypes = { "html", "markdown", "css", "ts", "tsx", "vue", "pcss", "scss", "pcss" },
    cli_options = {
      config_precedence = "prefer-file",
    },
  },

  b.formatting.eslint_d.with { filetypes = { "typescript", "typescriptreact", "vue" } },
  b.diagnostics.eslint_d.with { filetypes = { "typescript", "typescriptreact", "vue" } },

  -- Lua
  b.formatting.stylua.with { filetypes = { "lua" } },

  -- golang
  b.formatting.gofumpt.with { filetypes = { "go" } },
  b.formatting.goimports.with { filetypes = { "go" } },

  -- rust
  -- b.formatting.rustfmt,

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
        callback = function()
          -- NOTE: check how it will work
          vim.lsp.buf.format { async = true }
        end,
      })
    end
  end,
}

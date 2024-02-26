return {
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = false,
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = { 'stylua' },

      -- JavaScript / TypeScript
      -- javascript = { 'prettierd' },
      -- typescript = { 'prettierd' },
      -- typescriptreact = { 'prettierd' },
      --
      -- HTML / CSS
      -- html = { 'prettierd' },
      -- css = { 'prettierd' },
      -- scss = { 'prettierd' },
      --
      -- Go
      go = { 'gofumpt', 'goimports' },
    },
  },
}

return {
  'stevearc/conform.nvim',
  event = 'VeryLazy',
  config = function()
    return require('conform').setup {
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
        autodetect = true,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        typescript = { { 'prettierd', 'prettier' }, { 'eslint', 'eslint_d' } },
        typescriptreact = { { 'prettierd', 'prettier' }, { 'eslint', 'eslint_d' } },
      },
    }
  end,
}

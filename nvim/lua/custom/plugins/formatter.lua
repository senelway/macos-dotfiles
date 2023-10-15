return {
  'stevearc/conform.nvim',
  event = 'VeryLazy',
  config = function()
    return require('conform').setup {
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        scss = { 'stylelint' },
        css = { 'stylelint' },
        sass = { 'stylelint' },
        html = { 'prettierd', 'prettier' },
        typescript = { { 'prettierd', 'prettier' }, { 'eslint', 'eslint_d' } },
        typescriptreact = { { 'prettierd', 'prettier' }, { 'eslint', 'eslint_d' } },
        ["*"] = { "trim_whitespace" },
      },
    }
  end,
}

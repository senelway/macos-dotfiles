return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'go',
        'lua',
        'tsx',
        'typescript',
        'html',
        'css',
        'scss',
        'sql',
        'markdown',
        'json',
        'http',
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}

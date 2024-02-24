return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
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

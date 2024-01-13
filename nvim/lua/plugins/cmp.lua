return {
  -- Autocompletion
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  config = function()
    require 'cmp'.setup(require('config.cmp'))
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
  dependencies = {
    -- Snippet Engine & its associated nvim-cmp source
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',

    -- Adds LSP completion capabilities
    'hrsh7th/cmp-nvim-lsp',

    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',

    -- Adds a number of user-friendly snippets
    'rafamadriz/friendly-snippets',
  },
}
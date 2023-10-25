return {
  -- Git related plugins
  { 'tpope/vim-fugitive', event = "InsertEnter" },
  { 'tpope/vim-rhubarb',  event = "InsertEnter" },

  -- Detect tabstop and shiftwidth automatically
  { 'tpope/vim-sleuth',   event = "InsertEnter" },

  -- Useful plugin to show you pending keybinds.
  {
    'folke/which-key.nvim',
    event = "VeryLazy",
    setup = function()
      require('which-key').register {
        ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
        ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
        ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
        ['<leader>h'] = { name = 'More git', _ = 'which_key_ignore' },
        ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
        ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
        ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
      }
    end,
  },

  -- Colorize color names
  {
    'norcalli/nvim-colorizer.lua',
    event = "InsertEnter",
    config = function()
      require 'colorizer'.setup()
    end
  },
}

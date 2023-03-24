local overrides = require("custom.configs.overrides")
local grpconf = require("custom.configs.chatgpt")

---@type NvPluginSpec[]
local plugins = {
  -- Override plugin definition options

  {
    "MunifTanjim/nui.nvim",
    module = {"nui.layout", "nui.popup"},
    module_pattern = {"nui.*"}
  },
  {
    "jackMort/ChatGPT.nvim",
    cmd = "ChatGPT",
    opt = true,
    keys = {"<leader>gpt"},
    module_pattern = {"chatgpt*"},
    config = function()
      require('chatgpt').setup(grpconf)
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },

  {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<C-p>",
          },
        },
      })
    end,
  },


  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

}

return plugins

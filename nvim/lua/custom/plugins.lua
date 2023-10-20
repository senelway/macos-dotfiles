local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  -- Override plugin definition options
  --
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "nvimtools/none-ls.nvim",
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
    opts = overrides.mason,
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

  -------------------------------
  -------------------------------
  -------------------------------
  -------------------------------
  -------------------------------
  -------------------------------

  {
    "kdheepak/lazygit.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    cmd = { "LazyGit" },
  },
  {
    "tpope/vim-dadbod",
    cmd = { "DB", "DBUIAddConnection", "DBUI", "DBUIToggle" },
    dependencies = {
      {
        "kristijanhusak/vim-dadbod-ui",
      },
      {
        "kristijanhusak/vim-dadbod-completion",
      },
    },
    config = function()
      require("custom.configs.dadbod").setup {}
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "InsertEnter",
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  {
    "ThePrimeagen/harpoon",
    config = function()
      require("harpoon").setup {}
    end,
  },

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "TroubleToggle",
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
      require("copilot").setup {
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<C-v>",
          },
        },
      }
    end,
  },
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("rest-nvim").setup {
        env_file = ".env",
        result = {
          show_url = true,
        },
      }
    end,
  },
}

return plugins

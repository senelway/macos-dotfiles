local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",

    "html",
    "css",
    "scss",

    -- "javascript",
    "typescript",
    "c",

    "tsx",
    -- "svelte",
    -- "vue",

    "go",
    -- "rust",

    "sql",
    "markdown",

    "json",
    "http",
  },
  indent = {
    enable = true,
  },
}

M.telescope = {
  extensions_list = { "harpoon", "themes", "terms" },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "html-lsp",
    "typescript-language-server",
    -- "svelte-language-server",
    -- "vue-language-server",

    "eslint-lsp",
    "eslint_d",

    "prettier",
    "prettierd",

    -- style
    "css-lsp",
    "tailwindcss-language-server",
    -- "unocss-language-server",

    -- rust
    -- "rust-analyzer",
    -- "rustfmt",

    -- go lang
    "gopls",
    "gofumpt",
    "goimports",

    -- NOTE: c#
    -- "csharp-language-server",
    -- "csharpier"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  view = {
    width = 25,
  },

  renderer = {
    highlight_git = true,
    highlight_opened_files = "none",
    icons = {
      show = {
        git = true,
      },
      glyphs = {
        folder = {
          default = "",
        },
      },
    },
    indent_markers = {
      enable = true,
    },
  },
}

return M

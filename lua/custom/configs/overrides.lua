local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    disable = {
      "python",
    },
  },
}

M.telescope = {
  defaults = {
    file_ignore_patterns = {
      "public/*",
      "node_modules/*",
      "build/*",
      "dist/*",
      ".yarn/*",
      ".git/*",
      ".idea/*",
    },
  },
  extensions = {
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "eslint-lsp",
    "eslint_d",
    "prettier",
    "prettierd",
    "tailwindcss-language-server",
    "vue-language-server",

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

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M

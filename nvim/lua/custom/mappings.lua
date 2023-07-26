---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["\\"] = { "<cmd> vsplit <cr>", "split horizontal" },
    ["|"] = { "<cmd> split <cr>", "split vertical" },
    ["="] = { "<cmd> close <cr>" },
    ["<leader>we"] = { "<cmd> set spell <cr>", "spell check" },
    ["<leader>go"] = { "<cmd> GithubOpen <cr>", "github open" },
    ["<leader>a"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "add file to harpoon",
    },
    ["<leader>fh"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "harpoon quick menu",
    },
  },
  i = {
    ["jj"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    ["kk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
  v = {
    ["<C-o>"] = { "<cmd> LinkOpen <cr>", "browser open" },
  },
}

M.lazygit = {
  n = {
    ["<leader>gl"] = { "<cmd> LazyGit <cr>", "Open LazyGit" },
  },
}
M.RestNvim = {
  plugin = true,
  n = {
    ["<leader>tr"] = { "<cmd> RestNvim <cr>", "http request" },
  },
}

M.dadbod = {
  n = {
    ["<leader>fe"] = { "<cmd> DBUIToggle <cr>", "toggle database ui" },
  },
}

M.Trouble = {
  plugin = true,
  n = {
    ["<leader>fe"] = { "<cmd> Trouble <cr>", "find errors file" },
    ["<leader>fE"] = { "<cmd> Trouble workspace_diagnostics <cr>", "find errors in workspace" },
  },
}

M.SymbolsOutline = {
  plugin = true,
  n = {
    ["<leader>so"] = { "<cmd> SymbolsOutline <cr>", "symbols outline" },
  },
}

M.tabufline = {
  plugin = true,
  n = {
    ["qq"] = {
      function()
        if require("custom.utils.helpers").isCurrentBufferOption "TelescopePrompt" == false then
          require("nvchad_ui.tabufline").close_buffer()
        end
      end,
      "close buffer",
    },
    ["qc"] = { "<cmd> close <cr>", "close" },
  },
}

M.telescope = {
  plugin = true,
  n = {
    ["<leader>gbb"] = { "<cmd> Telescope git_branches <CR>", "git branches" },
    ["<leader>fs"] = { "<cmd> Telescope grep_string <CR>", "grep with word under cursor" },
  },
}

M.nvterm = {
  plugin = true,
  t = {
    ["<leader><Esc>"] = {
      function()
        if require("custom.utils.helpers").isCurrentBufferOption "terminal" then
          require("nvterm.terminal").toggle "float"
        end
      end,
      "Terminal: toggle floating",
    },
  },
  n = {
    ["<leader>i"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Termina: toogle floaing",
    },
  },
}

M.lspconfig = {
  plugin = true,
  n = {
    ["gd"] = {
      function()
        vim.lsp.buf.definition { on_list = require("custom.utils.helpers").definition_on_list }
      end,
      "lsp definition",
    },
  },
}
return M

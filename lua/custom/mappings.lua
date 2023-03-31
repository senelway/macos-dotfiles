---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["|"] = { "<cmd> vsplit <cr>" },
    ["="] = { "<cmd> close <cr>" },
    ["<leader>we"] = { "<cmd> set spell <cr>", "spell check" },

    -- custome methods
    ["<leader>go"] = { "<cmd> GHOpen <cr>", "github open" },
  },
  i = {
    ["jj"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    ["kk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
  v = {
    ["<C-o>"] = { "<cmd> LinkOpen <cr>", "browser open" },
  }
}

M.TodoTelescope = {
  n = {
    ["<leader>ft"] = { "<cmd> TodoTelescope <cr>", "find todos, notes, etc." },
  },
}

M.ChatGPT = {
  n = {
    ["<leader>gg"] = { "<cmd> ChatGPT <cr>", "open chat gpt" },
  },
}

M.Trouble = {
  n = {
    ["<leader>fe"] = { "<cmd> Trouble <cr>", "find errors" },
  },
}

M.SymbolsOutline = {
  n = {
    ["<leader>so"] = { "<cmd> SymbolsOutline <cr>", "symbols outline" },
  },
}

M.tabufline = {
  n = {
    ["qq"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "close buffer",
    },
  },
}

M.telescope = {
  n = {
    ["<leader>gbb"] = { "<cmd> Telescope git_branches <CR>", "git branches" },
  },
}

M.nvterm = {
  t = {
    ["<leader>i"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },
  n = {
    ["<leader>i"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  },
}

return M

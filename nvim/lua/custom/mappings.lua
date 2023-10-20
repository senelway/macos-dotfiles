---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["\\"] = { "<cmd> vsplit <cr>", "Split horizontal" },
    ["|"] = { "<cmd> split <cr>", "Split vertical" },
    ["="] = { "<cmd> close <cr>" },

    ["<leader>we"] = { "<cmd> set spell <cr>", "Enable spell checking" },
    ["<leader>wE"] = { "<cmd> set spell! <cr>", "Disable spell checking" },
    ["<C-\\>"] = { "<cmd> vertical resize +10 <cr>", "Resize vertical window" },

    ["<C-S-j>"] = { "<cmd> m .+1 <cr>", "Move line down" },
    ["<C-S-k>"] = { "<cmd> m .-2 <cr>", "Move line down" },

    ["<leader>tt"] = { "<cmd> terminal <cr>", "Terminal open (classic mode)" },
  },
  i = {
    ["jj"] = { "<ESC>", "Escape insert mode", opts = { nowait = true } },
    ["jk"] = { "<ESC>", "Escape insert mode", opts = { nowait = true } },
  },
}

M.recats = {
  n = {
    ["<leader>go"] = { "<cmd> GithubOpen <cr>", "Github open" },
  },
  v = {
    ["<C-o>"] = { "<cmd> LinkOpen <cr>", "Browser open" },
  },
}

M.harpoon = {
  n = {
    ["<leader>a"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "Add file to harpoon",
    },
    ["<leader>ss"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "Harpoon quick menu",
    },
    ["<C-p>"] = {
      function()
        require("harpoon.ui").nav_next()
      end,
      "Harpoon next file",
    },
    ["<C-u>"] = {
      function()
        require("harpoon.ui").nav_prev()
      end,
      "Harpoon prev file",
    },
  },
}

M.lazygit = {
  n = {
    ["<leader>lg"] = { "<cmd> LazyGit <cr>", "Open LazyGit" },
  },
}
M.RestNvim = {
  n = {
    ["<leader>tr"] = { "<Plug>RestNvim", "HTTP request" },
  },
}

M.dadbod = {
  n = {
    ["<leader>od"] = { "<cmd> DBUIToggle <cr>", "Toggle database ui" },
  },
}

M.Trouble = {
  n = {
    ["<leader>xx"] = { "<cmd> Trouble <cr>", "Find errors in file" },
    ["<leader>xw"] = { "<cmd> Trouble workspace_diagnostics <cr>", "Find errors in workspace" },
  },
}

M.tabufline = {
  plugin = true,
  n = {
    ["qq"] = {
      function()
        if require("custom.utils.helpers").isCurrentBufferOption "TelescopePrompt" == false then
          require("nvchad.tabufline").close_buffer()
        end
      end,
      "close buffer",
    },
    ["qc"] = { "<cmd> close <cr>", "close" },
  },
}

M.nvterm = {
  plugin = true,
  t = {
    ["<Esc><Esc>"] = {
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

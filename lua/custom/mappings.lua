---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["|"] = { "<cmd> vsplit <cr>" },
    ["="] = { "<cmd> close <cr>" },
    ["<leader>we"] = { "<cmd> set spell <cr>", "spell check" },
  },
  i = {
    ["jj"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    ["kk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
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

return M

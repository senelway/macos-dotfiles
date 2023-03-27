---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["|"] = { "<cmd> vsplit <cr>" },
    ["="] = { "<cmd> close <cr>" },
    ["<leader>fe"] = { "<cmd> Trouble <cr>", "find errors" },
    ["<leader>gg"] = { "<cmd> ChatGPT <cr>", "open chat gpt" },
    ["<leader>ft"] = { "<cmd> TodoTelescope <cr>", "find todos, etc." },
    ["<leader>we"] = { "<cmd> set spell <cr>", "spell check" },
  },
  i = {
    ["jj"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
}

return M

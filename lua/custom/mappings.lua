---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["|"] = { "<cmd> vsplit <cr>" },
    ["="] = {"<cmd> close <cr>"},
    ["ge"] = { "<cmd> Trouble <cr>" },
    ["<leader>gg"] = { "<cmd> ChatGPT <cr>" },
    ["<leader>tt"] = { "<cmd> TodoTelescope <cr>" },
    ["<leader>we"] = { "<cmd> set spell <cr>" },
  },
  i = {
    ["jj"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
}

return M

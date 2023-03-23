---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["|"] = {":vsplit <cr>"},
    ["ff"] = {":Telescope fd <cr>"},
    ["fg"] = {":Telescope live_grep <cr>"},
    ["fs"] = {":Telescope git_status <cr>"},
  },
  i = {
     ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  }
}


return M

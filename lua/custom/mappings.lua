---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["|"] = {":vsplit <cr>"},
    ["ge"] = {":Trouble <cr>"},
    ["gpt"] = {":ChatGPT <cr>"}
  },
  i = {
     ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  }
}


return M

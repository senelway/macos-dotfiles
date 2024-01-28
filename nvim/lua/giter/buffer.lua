local PullRequests = require("giter.pull_requests")

local M = {}

local GITER = "__giter__"

local group = vim.api.nvim_create_augroup("Giter", {})

local gite_menu_id = math.random(1000000)
local function get_giter_name()
  return GITER .. gite_menu_id + 1
end

-- @param bufnr: integer
function M.connect_buf(bufnr)
  local giter = require("giter")
  if vim.api.nvim_buf_get_name(bufnr) == "" then
    vim.api.nvim_buf_set_name(bufnr, get_giter_name())
  end

  vim.api.nvim_set_option_value("filetype", "giter", { buf = bufnr, })
  vim.api.nvim_set_option_value("buftype", "acwrite", { buf = bufnr })
  vim.keymap.set("n", "q", function() giter.ui:close_menu() end, { buffer = bufnr, silent = true })
  vim.keymap.set("n", "<Esc>", function() giter.ui:close_menu() end, { buffer = bufnr, silent = true })

  vim.api.nvim_create_autocmd({ "BufWriteCmd" }, {
    group = group,
    buffer = bufnr,
    callback = function()
      PullRequests:proceed(bufnr)
    end,
  })

  vim.api.nvim_create_autocmd({ "BufLeave" }, {
    group = group,
    buffer = bufnr,
    callback = function()
      giter.ui:close_menu()
    end,
  })
end

return M

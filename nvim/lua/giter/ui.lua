local Buffrn = require("giter.buffer")

-- @class: GiterUI
local GiterUI = {}
GiterUI.__index = GiterUI


function GiterUI:new()
  return setmetatable({
    win_id = nil,
    bufnr = nil,
    data = nil,
  }, self)
end

---@return number,number
function GiterUI:_create_window()
  local width = vim.api.nvim_get_option('columns')
  local height = vim.api.nvim_get_option('lines')
  local win_width = math.ceil(width * 0.3 - 4)
  local win_height = math.ceil(height * 0.3 - 8)

  local bufnr = vim.api.nvim_create_buf(false, true)
  local win_id = vim.api.nvim_open_win(bufnr, true, {
    relative = 'editor',
    width = win_width,
    height = win_height,
    col = math.ceil((width - win_width) / 2 - 1),
    row = math.ceil((height - win_height) / 2 - 1),
    style = 'minimal',
    border = "single",
    title = "Pull requests",
    title_pos = "left",
  })

  if win_id == 0 then
    self.bufnr = bufnr
    self:close_menu()
  end

  Buffrn.connect_buf(bufnr)

  self.win_id = win_id

  return win_id, bufnr
end

function GiterUI:close_menu()
  if self.bufnr ~= nil and vim.api.nvim_buf_is_valid(self.bufnr) then
    vim.api.nvim_buf_delete(self.bufnr, { force = true })
  end
  if self.win_id ~= nil and vim.api.nvim_win_is_valid(self.win_id) then
    vim.api.nvim_win_close(self.win_id, true)
  end

  self.win_id = nil
  self.bufnr = nil
  self.data = nil
end

---@param data string[]
function GiterUI:open_pr_list(data)
  local win_id, bufnr = self:_create_window()
  vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, data)
  self.win_id = win_id
  self.bufnr = bufnr
  self.data = data
end

return GiterUI

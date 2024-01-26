local Data = {}
Data.__index = Data

-- @param data: string
local function json_decode(data)
  local prs = vim.fn.json_decode(data)
  local lines = {}
  if not prs or #prs == 0 then
    return lines
  end
  for _, pr in ipairs(prs) do
    table.insert(lines, string.format("[] #%s %s", pr.number, pr.title))
  end
  return lines
end

function Data:new()
  return setmetatable({ _pr_list = nil }, self)
end

function Data:pr_list_load()
  local handle = io.popen("gh pr list --json number --json title --json url")
  if not handle then
    return {}
  end
  local result = handle:read("*a")
  handle:close()

  local data = json_decode(result)
  self._pr_list = data
  return data or {}
end

function Data:pr_list_sync(bufnr)
  vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, self:pr_list_load())
end

return Data

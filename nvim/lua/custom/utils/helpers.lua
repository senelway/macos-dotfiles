local M = {}

local function filter(arr, fn)
  if type(arr) ~= "table" then
    return arr
  end

  local filtered = {}
  for k, v in pairs(arr) do
    if fn(v, k, arr) then
      table.insert(filtered, v)
    end
  end

  return filtered
end

local function filterReactDTS(value)
  return string.match(value.filename, "node_modules/@types/react/index.d.ts") == nil
end

M.definition_on_list = function(options)
  local items = options.items
  if #items > 1 then
    items = filter(items, filterReactDTS)
  end

  vim.fn.setqflist({}, " ", { title = options.title, items = items, context = options.context })
  vim.api.nvim_command "cfirst" -- or maybe you want 'copen' instead of 'cfirst'
end

M.isCurrentBufferOption = function(value)
  local bufnr = vim.api.nvim_get_current_buf()
  local fileType = vim.api.nvim_buf_get_option(bufnr, "filetype")
  return fileType == value
end

return M

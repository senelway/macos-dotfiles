return function(value)
  local bufnr = vim.api.nvim_get_current_buf()
  local fileType = vim.api.nvim_buf_get_option(bufnr, "filetype")
  return fileType == value
end

vim.keymap.set('n', '<leader>xw', function()
  require('trouble').toggle 'workspace_diagnostics'
end, { desc = '[W]orkspace diagnostic' })

vim.keymap.set('n', '<leader>xd', function()
  require('trouble').toggle 'document_diagnostics'
end, { desc = '[D]ocuemnt diagnostic' })

return {
  'folke/trouble.nvim',
  event = 'InsertEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}

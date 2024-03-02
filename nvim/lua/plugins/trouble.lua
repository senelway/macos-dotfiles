vim.keymap.set('n', '<leader>ot', function()
  require('trouble').toggle 'workspace_diagnostics'
end, { desc = '[T]rouble workspace diagnostic' })

vim.keymap.set('n', '<leader>oT', function()
  require('trouble').toggle 'document_diagnostics'
end, { desc = '[T]rouble document diagnostic' })

return {
  'folke/trouble.nvim',
  event = 'InsertEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}

vim.keymap.set('n', '<leader>ott', function()
  require('trouble').toggle 'workspace_diagnostics'
end, { desc = '[T]rouble workspace diagnostic' })

return {
  'folke/trouble.nvim',
  event = 'InsertEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  opts = {
    disable_filetype = { 'TelescopePrompt', 'spectre_panel' },
    check_ts = true,
  },
  dependencies = { 'hrsh7th/nvim-cmp' },
}

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('nvim-tree').setup {
      update_focused_file = {
        enable = true,
        update_root = false,
        ignore_list = {},
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
      renderer = {
        icons = {
          glyphs = {
            git = {
              unstaged = '',
              staged = '',
              unmerged = '',
              renamed = '➜',
              untracked = '',
              deleted = '',
              ignored = '◌',
            },
          },
        },
        indent_markers = {
          inline_arrows = true,
          enable = true,
        },
      },
    }
    vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', { noremap = true, silent = true })
  end,
}

local HEIGHT_RATIO = 0.6 -- You can change this
local WIDTH_RATIO = 0.6 -- You can change this tool

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('nvim-tree').setup {
      view = {
        float = {
          enable = true,
          open_win_config = function()
            local screen_w = vim.opt.columns:get()
            local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
            local window_w = screen_w * WIDTH_RATIO
            local window_h = screen_h * HEIGHT_RATIO
            return {
              border = 'single',
              relative = 'editor',
              row = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get(),
              col = (screen_w - window_w) / 2,
              width = math.floor(window_w),
              height = math.floor(window_h),
            }
          end,
        },
        width = function()
          return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
        end,
      },
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

return {
  {
    'numToStr/Comment.nvim',
    vent = { 'BufReadPost', 'BufNewFile' },
    opts = {
      toggler = {
        line = '<leader>/',
        block = '<leader>?',
      },
      opleader = {
        line = '<leader>/',
        block = '<leader>?',
      },
    },
    lazy = false,
  },
}

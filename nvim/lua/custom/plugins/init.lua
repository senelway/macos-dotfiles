vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.oexpandtab = true
vim.opt.relativenumber = true
vim.opt.mouse = ''
vim.o.cursorline = true
vim.o.swapfile = false

vim.api.nvim_set_keymap('n', '\\', ':vsplit<CR>', { desc = 'Vertical split' })
vim.api.nvim_set_keymap('n', '|', ':split<CR>', { desc = 'Horizontal split' })
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { desc = 'Escape insert mode' })

vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { desc = 'Move down' })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { desc = 'Move up' })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { desc = 'Move right' })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { desc = 'Move left' })
vim.api.nvim_set_keymap('n', '<C-q>', '<C-w>q', { desc = 'Close' })
vim.api.nvim_set_keymap('n', '<leader>oe', ':Explore<CR>', { noremap = true, silent = true, desc = 'Open file explorer' })
vim.api.nvim_set_keymap('n', '<leader>go', ':GithubOpen<CR>', { noremap = true, silent = true, desc = 'Github open' })

vim.api.nvim_set_keymap('n', ';', ':', { noremap = true })

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- spliting
vim.keymap.set('n', '\\', ':vsplit<CR>', { desc = 'Vertical split' })
vim.keymap.set('n', '|', ':split<CR>', { desc = 'Horizontal split' })
vim.keymap.set('i', 'jj', '<ESC>', { desc = 'Escape insert mode' })

-- basic movement
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move down' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move up' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move right' })
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move left' })
vim.keymap.set('n', '<C-q>', '<C-w>q', { desc = 'Close' })
vim.keymap.set('n', '<leader>oe', ':Explore<CR>', { noremap = true, silent = true, desc = 'Open file explorer' })
vim.keymap.set('n', '<leader>go', ':GithubOpen<CR>', { noremap = true, silent = true, desc = 'Github open' })
vim.keymap.set('n', '<leader>gg', ':Git <CR>', { noremap = true, silent = true, desc = 'Git run' })
vim.keymap.set('n', ';', ':', { noremap = true })
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
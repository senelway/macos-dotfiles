vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- spliting
vim.keymap.set('n', '\\', ':vsplit<CR>', { desc = 'Vertical split' })
vim.keymap.set('n', '|', ':split<CR>', { desc = 'Horizontal split' })

-- basic movement
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move down' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move up' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move right' })
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move left' })
-- Git integration
vim.keymap.set('n', '<leader>go', ':GithubOpen<CR>', { noremap = true, silent = true, desc = '[G]ithub [O]pen' })
vim.keymap.set('n', '<leader>gg', ':Git <CR>', { noremap = true, silent = true, desc = '[G] [G]it run' })
vim.keymap.set('n', '<leader>gd', ':Gvdiff <CR>', { noremap = true, silent = true, desc = '[G]it [d]iff' })
vim.keymap.set('n', '<leader>gD', ':Git diff <CR>', { noremap = true, silent = true, desc = '[G]it [D]iff classic' })
--
-- General
vim.keymap.set('n', ';', ':', { noremap = true })
vim.keymap.set('n', '<leader>rw', ':tabdo wincmd =<CR>',
  { noremap = true, silent = true, desc = '[R] Equalize [W]indow sizes' })
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', '<leader>sp', ":echo @%<CR>", { noremap = true, silent = true, desc = '[S]how [P]ath' })
vim.keymap.set('n', '<leader>bw', ':bw<CR>', { noremap = true, silent = true, desc = '[B]uffer [W]ipeout' })
--
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = 'Move up' })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = 'Move down' })

-- moving line
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = 'Move line down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = 'Move line up' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>oe', vim.diagnostic.open_float, { desc = '[O]pen floating diagnostic message / [E]rrors' })
vim.keymap.set('n', '<leader>x', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- navigate within insert mode
vim.keymap.set('i', '<C-j>', '<Down>', { desc = 'Move down' })
vim.keymap.set('i', '<C-k>', '<Up>', { desc = 'Move up' })
vim.keymap.set('i', '<C-l>', '<Right>', { desc = 'Move right' })
vim.keymap.set('i', '<C-h>', '<Left>', { desc = 'Move left' })

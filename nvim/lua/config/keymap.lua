vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local function generate_options(desc)
  return { noremap = true, silent = true, desc = desc }
end

-- spliting
vim.keymap.set('n', '\\', ':vsplit<CR>', { desc = 'Vertical split' })
vim.keymap.set('n', '|', ':split<CR>', { desc = 'Horizontal split' })

-- basic movement
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move down' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move up' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move right' })
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move left' })
-- Git integration
vim.keymap.set('n', '<leader>go', ':GithubOpen<CR>', generate_options('[G]ithub [O]pen'))
vim.keymap.set('n', '<leader>gg', ':Git <CR>', generate_options('[G] [G]it run'))
vim.keymap.set('n', '<leader>gd', ':Gvdiff <CR>', generate_options('[G]it [d]iff'))
vim.keymap.set('n', '<leader>gD', ':Git diff <CR>', generate_options('[G]it [D]iff classic'))
vim.keymap.set('n', '<leader>gm', ':Git mergetool <CR>', generate_options('[G]it [M]ergetool'))
vim.keymap.set('n', '<leader>ga', ':Git add <CR>', generate_options('[G]it [A]dd'))
vim.keymap.set('n', '<leader>gp', ':Git push origin ', { noremap = true, desc = '[G]it [P]ush origin %' })
vim.keymap.set('n', '<leader>gc', ':Git checkout -b ', { noremap = true, desc = '[G]it [C]checkout -b %' })
vim.keymap.set('n', '<leader>gl', ':lua vim.cmd("!gh pr create --fill --web")<CR>',
  generate_options('[G]it [L]aunch the opening of a pull request'))
vim.keymap.set('n', '<leader>gx', ':lua vim.cmd("!git checkout main && git pull && git fetch --all --prune")<CR>',
  generate_options('[G]it [X] checkout, fetch, prune'))
--
-- General
vim.keymap.set('n', ';', ':', { noremap = true })
vim.keymap.set('n', '<leader>rw', ':tabdo wincmd =<CR>',
  generate_options('[R] Equalize [W]indow sizes'))
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', '<leader>sp', ":echo @%<CR>", generate_options('[S]how [P]ath'))
vim.keymap.set('n', '<leader>bw', ':bw<CR>', generate_options('[B]uffer [W]ipeout'))
vim.keymap.set('n', '<leader>e', ':Explore %:p:h<CR>', generate_options('[E]xplore'))
--
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = 'Move up' })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = 'Move down' })

-- moving line
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", generate_options('Move line down'))
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", generate_options('Move line up'))

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

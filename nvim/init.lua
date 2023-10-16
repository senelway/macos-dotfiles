require 'config.keymap'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- require 'kickstart.plugins.autoformat',
  -- require 'kickstart.plugins.debug',
  require 'plugins.others',
  require 'plugins.treesitter',
  require 'plugins.telescope',
  require 'plugins.lualine',
  require 'plugins.lsp',
  require 'plugins.cmp',
  require 'plugins.theme',
  require 'plugins.indent_blankline',
  require 'plugins.harpoon',
  require 'plugins.copilot',
  require 'plugins.database',
  require 'plugins.formatter',
  require 'plugins.comment',
  require 'plugins.surround',
  require 'plugins.term',
  require 'plugins.gitsigns',
}, {})

require 'config.vim'

require 'config.telescope'

vim.defer_fn(function()
  require 'config.treesitter'
end, 0)

require('mason').setup()
require('mason-lspconfig').setup()

require('neodev').setup()

require 'config.lspconfig'
require 'config.cmp'

require 'config.which_key'
---
require 'tools.github'
require 'tools.yank'

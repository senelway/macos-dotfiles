require 'config.set'
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

require('lazy').setup(require 'plugins.setup', {})


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

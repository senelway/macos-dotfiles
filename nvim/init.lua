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

require('lazy').setup(
  require 'plugins.setup',
  {
    performance = {
      rtp = {
        disabled_plugins = {
          "netrw",
          "netrwPlugin",
          "2html_plugin",
          "tohtml",
          "getscript",
          "getscriptPlugin",
          "gzip",
          "logipat",
          "matchit",
          "tar",
          "tarPlugin",
          "rrhelper",
          "spellfile_plugin",
          "vimball",
          "vimballPlugin",
          "zip",
          "zipPlugin",
          "tutor",
          "rplugin",
          "syntax",
          "synmenu",
          "optwin",
          "compiler",
          "bugreport",
          "ftplugin",
        },
      },
    },
  }
)

require('mason').setup()
require('mason-lspconfig').setup()

require('neodev').setup()

require 'config.lspconfig'

---
require 'tools.github'
require 'tools.yank'

vim.g.mapleader = ","      -- use , as global leader
vim.g.maplocalleader = " " -- use <space> as subcmd leader

require 'user.plugins'
require 'user.keybindings'
require 'user.options'
require 'user.plugin_config'
--require 'lspconfig'.clangd.setup{}

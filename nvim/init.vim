" use , as global leader
let mapleader = ","
" use <space> as subcmd leader
let maplocalleader = " "

let g:self_setup_dir = resolve(expand("<sfile>:p"))->fnamemodify(':h:h')
let s:self_custom_dir = g:self_setup_dir .. '/common'
exec 'set rtp^=' .. s:self_custom_dir

exec 'source ' .. s:self_custom_dir .. '/custom/keymap.vim'

lua require 'user.plugins'
lua require 'user.keybindings'
lua require 'user.options'
lua require 'user.plugin_config'
lua require 'user.lsp_config'
lua require 'user.ts_config'


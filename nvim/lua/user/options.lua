vim.o.swapfile = false
vim.o.awa = true -- auto write all
vim.o.cst = false
vim.o.cscopequickfix ='s-,c-,d-,i-,t-,e-,a-'
vim.g.molokai_original = 1
vim.g.rehash256 = 1

vim.cmd([[
colorscheme molokai
set termguicolors
set mouse=
set t_Co=256
set laststatus=2
set timeout
set ttimeout
set ttimeoutlen=50
set termencoding=utf-8
set guifont=UbuntuMono\ Nerd\ Font\ Mono:h14
set backspace=indent,eol,start
set incsearch hlsearch
set cursorcolumn cursorline
set ts=4
set sw=4
set autoindent
set expandtab
set number relativenumber
set fileencodings=ucs-bom,utf-8,cp936,latin1
set shiftround
set ignorecase smartcase
filetype plugin indent on
syntax on
]])

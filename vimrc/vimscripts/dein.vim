if &compatible
  set nocompatible " Be iMproved
endif
let dein_install_directory = expand("~/.cache/dein")
if !isdirectory(dein_install_directory)
    echomsg dein_install_directory . " don't exist, creaing..."
    call mkdir(dein_install_directory, "p")
endif

let dein_self_directory = expand("<sfile>:p:h:h") . "/dein.vim"

" Required:
" Add the dein installation directory into runtimepath
exec 'set runtimepath+=' . dein_install_directory
exec 'set runtimepath+=' . dein_self_directory

" Required:
call dein#begin(dein_install_directory)

" Let dein manage dein
call dein#add(dein_self_directory)
if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
endif

call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
call dein#add('tomasr/molokai')
call dein#add('scrooloose/nerdcommenter')
call dein#add('scrooloose/nerdtree')
call dein#add('majutsushi/tagbar')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-unimpaired')
call dein#add('tpope/vim-fugitive')
"call dein#add('xolox/vim-notes')
call dein#add('xolox/vim-misc')
call dein#add('easymotion/vim-easymotion')
call dein#add('junegunn/vim-easy-align')
call dein#add('Raimondi/delimitMate')
call dein#add('dkprice/vim-easygrep')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('Shougo/denite.nvim')
call dein#add('Yggdroot/LeaderF')
call dein#add('ryanoasis/vim-devicons')
call dein#add('ludovicchabant/vim-gutentags')
call dein#add('dimasg/vim-mark')
call dein#add('skywind3000/vim-terminal-help.git')
" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
" let g:dein#types#git#default_protocol='ssh'
if dein#check_install()
  call dein#install()
endif


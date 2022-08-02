return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'ncm2/ncm2'
	use 'ncm2/ncm2-bufword'
	use 'ncm2/ncm2-path'
	use 'ncm2/ncm2-ultisnips'
	use 'ncm2/ncm2-syntax'
	use 'Shougo/neco-syntax'
	use 'ncm2/ncm2-vim'
	use 'Shougo/neco-vim'
	use { 'neovim/nvim-lspconfig' }
	use { 'roxma/nvim-yarp' }
	use { 'preservim/tagbar' }
	use { 'preservim/nerdtree' }
	use { 'preservim/nerdcommenter' }
	use { 'ludovicchabant/vim-gutentags' }
	use { 'skywind3000/vim-terminal-help' }
	use "navarasu/onedark.nvim"
	use "Yggdroot/LeaderF"
	use 'tpope/vim-fugitive'
	use 'tpope/vim-surround'
	use 'tpope/vim-unimpaired'
	use 'easymotion/vim-easymotion'
	use 'junegunn/vim-easy-align'
	use 'dkprice/vim-easygrep'
	use 'Raimondi/delimitMate'
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	use 'ryanoasis/vim-devicons'
	use 'dimasg/vim-mark'
	use 'Shougo/denite.nvim'
	use 'SirVer/ultisnips'
	use 'honza/vim-snippets'
	use 'kyazdani42/nvim-tree.lua'
	use { 'nvim-treesitter/nvim-treesitter' }
	use 'skywind3000/asyncrun.vim'

	use 'tomasr/molokai'
	use { 'morhetz/gruvbox' }
end)


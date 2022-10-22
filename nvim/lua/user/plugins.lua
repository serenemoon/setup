local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('packer').init({
  max_jobs = 2,
  git = {
    default_url_format = 'https://gitclone.com/github.com/%s.git',
  }
  }
)


return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here

  -- lsp
  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }
  use { 'neovim/nvim-lspconfig' }

  -- completion
  use { 'Shougo/neco-syntax' }
  use { 'Shougo/neco-vim' }
  use { 'Shougo/deoplete.nvim' }
  use { 'wellle/tmux-complete.vim' }
  use { 'deoplete-plugins/deoplete-lsp' }

  use { 'liuchengxu/vista.vim' }
  use { 'roxma/nvim-yarp' }
  use { 'preservim/tagbar' }
  use { 'preservim/nerdtree' }
  use { 'preservim/nerdcommenter' }
  use { 'ludovicchabant/vim-gutentags' }
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
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  use 'nvim-tree/nvim-tree.lua'
  use { 'nvim-treesitter/nvim-treesitter' }
  use { 'skywind3000/vim-terminal-help' }
  use { 'skywind3000/asyncrun.vim' }
  use { 'skywind3000/asynctasks.vim' }
  use { 'skywind3000/LeaderF-snippet' }
  use { 'ray-x/lsp_signature.nvim' }

  -- color scheme
  use 'tomasr/molokai'
  use { 'morhetz/gruvbox' }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
      require('packer').sync()
  end
end)


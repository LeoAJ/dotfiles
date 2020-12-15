call plug#begin('~/.config/nvim/autoload/plugged')

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'

  " Better Syntax Support
  Plug 'nvim-treesitter/nvim-treesitter'
  
  " Auto pairs for '(' '[' '{' 
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/rainbow_parentheses.vim'

  " Better Comments
  Plug 'tpope/vim-commentary'

  " Theme
  Plug 'lifepillar/vim-gruvbox8'

  " Close tag
  Plug 'alvan/vim-closetag'

  " Cool Icons
  " Plug 'ryanoasis/vim-devicons'

  " Surround
  " Plug 'tpope/vim-surround'

  " See what keys do like in emacs
  Plug 'liuchengxu/vim-which-key'

  " snippets
  " Plug 'honza/vim-snippets'
  " Plug 'mattn/emmet-vim'

  " Git
  Plug 'mhinz/vim-signify'
  " Plug 'airblade/vim-gitgutter'
  " Plug 'tpope/vim-fugitive'
  " Plug 'tpope/vim-rhubarb'
  " Plug 'junegunn/gv.vim'

  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Plug 'airblade/vim-rooter'

  Plug 'tweekmonster/startuptime.vim'

call plug#end()

call plug#begin('~/.config/nvim/autoload/plugged')

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'tweekmonster/startuptime.vim'

  " Better Syntax Support
  Plug 'othree/yajs.vim'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'chriskempson/base16-vim'
  
  " Auto pairs for '(' '[' '{' 
  Plug 'jiangmiao/auto-pairs'

  " Better Comments
  Plug 'tpope/vim-commentary'

  " Theme
  Plug 'lifepillar/vim-gruvbox8'

  " Close tag
  Plug 'alvan/vim-closetag'

  " color
  Plug 'junegunn/rainbow_parentheses.vim'

  " Cool Icons
  " Plug 'ryanoasis/vim-devicons'

  " Surround
  " Plug 'tpope/vim-surround'

  " See what keys do like in emacs
  " Plug 'liuchengxu/vim-which-key'

  " snippets
  " Plug 'honza/vim-snippets'
  " Plug 'mattn/emmet-vim'

  " Git
  Plug 'airblade/vim-gitgutter'
  " Plug 'tpope/vim-fugitive'
  " Plug 'tpope/vim-rhubarb'
  " Plug 'junegunn/gv.vim'

  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Plug 'airblade/vim-rooter'

call plug#end()

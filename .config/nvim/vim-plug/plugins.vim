" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source '~/.config/nvim/autoload'
endif

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
  
  " Format
  Plug 'dense-analysis/ale'

  " Surround
  " Plug 'tpope/vim-surround'

  " See what keys do like in emacs
  Plug 'liuchengxu/vim-which-key'

  " snippets
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  " Plug 'mattn/emmet-vim'

  " Git
  Plug 'mhinz/vim-signify'
  Plug 'junegunn/gv.vim'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-fugitive'
  " Plug 'airblade/vim-gitgutter'

  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Plug 'airblade/vim-rooter'

  " Cool Icons
  Plug 'kyazdani42/nvim-web-devicons'

  " Tab
  Plug 'romgrk/barbar.nvim'

  Plug 'tweekmonster/startuptime.vim'

call plug#end()

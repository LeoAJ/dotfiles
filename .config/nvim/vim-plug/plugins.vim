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

  " Git
  Plug 'mhinz/vim-signify'

  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Tab
  Plug 'ap/vim-buftabline'

  Plug 'romainl/vim-cool'

  Plug 'tweekmonster/startuptime.vim'

call plug#end()

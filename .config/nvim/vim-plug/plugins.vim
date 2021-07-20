" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source '~/.config/nvim/autoload'
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  " icon
  Plug 'kyazdani42/nvim-web-devicons'

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'folke/lsp-colors.nvim'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'hrsh7th/nvim-compe'
  Plug 'onsails/lspkind-nvim'

  " telescope
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'

  " Better Syntax Support
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
  Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
  
  " Auto pairs for '(' '[' '{' 
  Plug 'windwp/nvim-autopairs'

  " Better Comments
  Plug 'terrortylor/nvim-comment'

  " Theme
  " Plug 'lifepillar/vim-gruvbox8'
  " Plug 'chriskempson/base16-vim'
  " Plug 'phanviet/vim-monokai-pro'
  Plug 'NLKNguyen/papercolor-theme'

  " Close tag
  " Plug 'alvan/vim-closetag'
  
  " Format
  Plug 'mhartington/formatter.nvim'

  " Surround
  " Plug 'tpope/vim-surround'

  " See what keys do like in emacs
  Plug 'folke/which-key.nvim'

  " snippets
  " Plug 'SirVer/ultisnips'
  " Plug 'honza/vim-snippets'

  " " Git
  Plug 'lewis6991/gitsigns.nvim'

  " Tab
  " Plug 'ap/vim-buftabline'

  Plug 'romainl/vim-cool'

  Plug 'airblade/vim-rooter'

  " explorer
  Plug 'kyazdani42/nvim-tree.lua'

  Plug 'tweekmonster/startuptime.vim'
call plug#end()

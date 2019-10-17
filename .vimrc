if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'joshdick/onedark.vim'
Plug 'luochen1990/rainbow'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'pangloss/vim-javascript'
Plug 'crusoexia/vim-javascript-lib'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'stylus/stylus'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rking/ag.vim'
Plug 'jparise/vim-graphql'
Plug 'hail2u/vim-css3-syntax'
Plug 'terryma/vim-multiple-cursors'
Plug 'myusuf3/numbers.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

call plug#end()

syntax on
set clipboard=unnamed
set ignorecase
set background=dark
colorscheme onehalfdark
set laststatus=2
set modifiable
set wildmenu
set incsearch
set hlsearch
set autoindent
set expandtab
set nu
set softtabstop=2
set shiftwidth=2
set nocompatible              " be iMproved, required
set t_Co=256
filetype off                  " required
set belloff=all "disable beep sound"
set relativenumber

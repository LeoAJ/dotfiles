" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    
    " Auto pairs for '(' '[' '{' 
    Plug 'jiangmiao/auto-pairs'
   
    " Better Comments
    Plug 'preservim/nerdcommenter'

    " Theme
    Plug 'christianchiarulli/onedark.vim'
    Plug 'kaicataldo/material.vim'
    Plug 'NLKNguyen/papercolor-theme'

    " Close tag
    Plug 'alvan/vim-closetag'

    " color
    Plug 'junegunn/rainbow_parentheses.vim'

    " Cool Icons
    Plug 'ryanoasis/vim-devicons'

    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Surround
    Plug 'tpope/vim-surround'

    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'

    " snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'

    " Start Screen
    Plug 'mhinz/vim-startify'

    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

call plug#end()

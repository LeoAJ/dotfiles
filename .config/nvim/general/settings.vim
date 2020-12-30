" set leader key
let g:mapleader = "\<Space>"

" enable true color
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

syntax enable
set hid
set nowrap
set iskeyword+=-
set t_Co=256
set conceallevel=0
set tabstop=2
set shiftwidth=2
set relativenumber
set number
set smarttab
set expandtab
set smartindent
set autoindent
set clipboard=unnamedplus
set formatoptions-=cro
set updatetime=300
set ttimeoutlen=100
set noru
set smartcase
set nobackup
set nowritebackup
set splitbelow
set splitright
set inccommand=split
set swb=useopen

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

augroup LuaHighlight
  autocmd!
  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
augroup END

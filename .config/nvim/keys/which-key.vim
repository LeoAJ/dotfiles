" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['.'] = [ ':e $MYVIMRC'                          , 'open init' ]
let g:which_key_map['='] = [ '<C-W>='                               , 'balance windows' ]
let g:which_key_map['a'] = [ ':e ~/.config/alacritty/alacritty.yml' , 'alacritty' ]
let g:which_key_map['b'] = [ ':BLines'                              , 'current buffer']
let g:which_key_map['c'] = [ ':Commands'                            , 'commands' ]
let g:which_key_map['d'] = [ ':bd'                                  , 'delete buffer']
let g:which_key_map['e'] = [ ':Vex'                                 , 'explorer']
let g:which_key_map['f'] = [ ':Telescope find_files'                , 'search files' ]
" let g:which_key_map['f'] = [ ':Files'                , 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                               , 'split below']
let g:which_key_map['p'] = [ ':ALEFix prettier'                     , 'prettier' ]
let g:which_key_map['r'] = [ ':Telescope live_grep'                 , 'search text' ]
" let g:which_key_map['r'] = [ ':Rg'                 , 'search text' ]
let g:which_key_map['s'] = [ ':Snippets'                            , 'snippets']
let g:which_key_map['v'] = [ '<C-W>v'                               , 'split right']
let g:which_key_map['z'] = [ ':e ~/.zshrc'                          , 'zshrc']

" Group mappings

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'B' : [':Git blame'                        , 'blame'],
      \ 'b' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit -m "temp save"'        , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : [':Gstatus'                          , 'status'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }

" t is for toggle
let g:which_key_map.t = {
      \ 'name' : '+toggle' ,
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")

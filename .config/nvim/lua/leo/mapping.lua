local nnoremap = require('leo.keymap').nnoremap
local vnoremap = require('leo.keymap').vnoremap
local xnoremap = require('leo.keymap').xnoremap

xnoremap('<leader>p', '\"_dP')

-- increment/decrement
nnoremap('+', '<C-a>')
nnoremap('-', '<C-x>')

-- close buffer
nnoremap('<leader>d', '<cmd>bdelete<cr>')

-- switch tab
nnoremap('<Tab>', '<cmd>BufferLineCycleNext<cr>')
nnoremap('<S-Tab>', '<cmd>BufferLineCyclePrev<cr>')

-- netrw
nnoremap('<leader>e', '<cmd>:Ex<CR>')

-- telescope
nnoremap('<leader>f', "<cmd>lua require('telescope.builtin').find_files()<CR>")
nnoremap('<leader>F', "<cmd>lua require('telescope.builtin').find_files { hidden = true, no_ignore = true }<CR>")
nnoremap('<leader>r', "<cmd>lua require('telescope.builtin').live_grep()<CR>")

-- stay in indent mode
vnoremap('<', '<gv')
vnoremap('>', '>gv')

-- move selected line up or down
vnoremap('J', ":m '>+1<CR>gv=gv")
vnoremap('K', ":m '<-2<CR>gv=gv")

-- terminal
nnoremap('<leader>t', '<cmd>ToggleTerm<cr>')

-- ?
nnoremap('Y', 'yg$')
nnoremap('<C-d>', '<C-d>zz')
nnoremap('<C-u>', '<C-u>zz')

-- split
nnoremap('<C-h>', '<C-w>h')
nnoremap('<C-j>', '<C-w>j')
nnoremap('<C-k>', '<C-w>k')
nnoremap('<C-l>', '<C-w>l')

-- resize split window
nnoremap('<C-Up>', '<cmd>resize -2<CR>')
nnoremap('<C-Down>', '<cmd>resize +2<CR>')
nnoremap('<C-Left>', '<cmd>vertical resize -2<CR>')
nnoremap('<C-Right>', '<cmd>vertical resize +2<CR>')

-- join line below to current with one space in between
nnoremap('J', 'mzJ`z')

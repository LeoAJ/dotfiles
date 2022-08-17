local nnoremap = require('leo.keymap').nnoremap
local vnoremap = require('leo.keymap').vnoremap

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

-- terminal
nnoremap('<C-\\>', '<cmd>ToggleTerm<cr>')
nnoremap('<leader>h', '<cmd>ToggleTerm size=10 direction=horizontal<cr>')
nnoremap('<leader>v', '<cmd>ToggleTerm size=80 direction=vertical<cr>')

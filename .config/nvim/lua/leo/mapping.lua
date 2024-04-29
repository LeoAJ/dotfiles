-- continue copy paste
vim.keymap.set("x", "<leader>p", '"_dP')

-- increment/decrement
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- close buffer
vim.keymap.set("n", "<leader>d", "<cmd>bdelete<cr>")

-- terminal
-- vim.keymap.set("n", "<leader>t", "<cmd>bdelete<cr>")

-- netrw
-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- move selected line up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- join line below to current with one space in between
vim.keymap.set("n", "J", "mzJ`z")

-- center after page up & down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Center with n/N
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- switch between buffers
vim.keymap.set("n", "<Tab>", "<cmd>bnext<cr>")
vim.keymap.set("n", "<S-Tab>", "<cmd>bprev<cr>")

-- format
-- vim.keymap.set("n", "<leader>g", function()
-- 	vim.lsp.buf.format()
-- end)

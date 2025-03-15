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

-- set Esc to switch back to normal mode in terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

vim.keymap.set("n", "<space>tr", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("L")
	vim.api.nvim_win_set_width(0, 50)
	vim.cmd.startinsert()
end)

vim.keymap.set("n", "<space>tb", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 5)
	vim.cmd.startinsert()
end)

-- format
-- vim.keymap.set("n", "<leader>g", function()
-- 	vim.lsp.buf.format()
-- end)
vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>")
vim.keymap.set("n", "gca", "<cmd>lua vim.lsp.buf.code_action()<cr>")
vim.keymap.set("n", "grn", "<cmd>lua vim.lsp.buf.rename()<cr>")
-- vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>")
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")
vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")
vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>")

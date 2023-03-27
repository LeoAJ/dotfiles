-- theme
vim.opt.termguicolors = true -- Enable 24-bit RGB color in the TUI
vim.cmd.colorscheme("rose-pine")
vim.opt.background = "dark"

-- setting
vim.g.mapleader = " "

vim.opt.wrap = false -- Disable wrapping of lines longer than the width of window
vim.opt.tabstop = 2 -- Number of space in a tab
vim.opt.shiftwidth = 2 -- Number of space inserted for indentation
vim.opt.relativenumber = true -- Show relative numberline
vim.opt.nu = true -- Show numberline?
vim.opt.expandtab = true -- Enable the use of space in tab
vim.opt.smartindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.updatetime = 50 -- Length of time to wait before triggering the plugin
vim.opt.backup = false
vim.opt.incsearch = true
vim.opt.signcolumn = "yes" -- Always show the sign column
vim.opt.swapfile = false -- Disable use of swapfile for the buffer
vim.opt.undofile = true -- Enable persistent undo
vim.opt.pumheight = 11 -- Height of the pop up menu

-- Highlight when yank
vim.cmd([[
  augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=200}
  augroup END
]])

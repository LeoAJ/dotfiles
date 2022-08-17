vim.g.mapleader = ' '

vim.opt.termguicolors = true -- Enable 24-bit RGB color in the TUI
vim.opt.fileencoding = 'utf-8' -- File content encoding for the buffer
vim.opt.hid = true
vim.opt.wrap = false -- Disable wrapping of lines longer than the width of window
-- vim.opt.iskeyword = 'UTF-8'
-- vim.opt.t_Co = 256
vim.opt.conceallevel = 0
vim.opt.tabstop = 2 -- Number of space in a tab
vim.opt.shiftwidth = 2 -- Number of space inserted for indentation
vim.opt.relativenumber = true -- Show relative numberline
vim.opt.nu = true -- Show numberline?
vim.opt.smarttab = true
vim.opt.expandtab = true -- Enable the use of space in tab
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.formatoptions = 'cro'
vim.opt.updatetime = 300 -- Length of time to wait before triggering the plugin
vim.opt.timeoutlen = 300 -- Length of time to wait for a mapped sequence
vim.opt.ru = false -- ??
vim.opt.smartcase = true
vim.opt.backup = false
vim.opt.writebackup = false -- Disable making a backup before overwriting a file
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.inccommand = 'split'
-- vim.opt.swb = 'usopen'
vim.opt.incsearch = true
-- vim.opt.signcolumn = 'yes'
vim.opt.completeopt = { 'menuone', 'noselect' }
vim.opt.history = 100 -- Number of commands to remember in a history table
vim.opt.mouse = 'a' -- Enable mouse support
vim.opt.signcolumn = 'yes' -- Always show the sign column
vim.opt.swapfile = false -- Disable use of swapfile for the buffer
vim.opt.undofile = true -- Enable persistent undo
vim.opt.backspace = vim.opt.backspace + { "nostop" } -- Don't stop backspace at insert
vim.opt.copyindent = true -- Copy the previous indentation on autoindenting
vim.opt.cursorline = true -- Highlight the text line of the cursor
vim.opt.fillchars = { eob = " " } -- Disable `~` on nonexistent lines
vim.opt.laststatus = 3 -- globalstatus
vim.opt.lazyredraw = true -- lazily redraw screen
vim.opt.preserveindent = true -- Preserve indent structure as much as possible
vim.opt.pumheight = 10 -- Height of the pop up menu
vim.opt.scrolloff = 8 -- Number of lines to keep above and below the cursor
vim.opt.sidescrolloff = 8 -- Number of columns to keep at the sides of the cursor

-- theme
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.opt.background = 'dark'

-- Highlight when yank
vim.cmd[[
  augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=200}
  augroup END
]]

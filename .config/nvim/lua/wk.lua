local wk = require "which-key"

local opts = {
  setup = {
    icons = {
      breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
      separator = "➜", -- symbol used between a key and it's label
      group = "+" -- symbol prepended to a group
    }
  },
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true -- use `nowait` when creating keymaps
}

local mappings = {
  ["."] = {"<cmd>e ~/.config/nvim/init.vim<CR>", "Open Init"},
  ["a"] = {"<cmd>e ~/.config/alacritty/alacritty.yml<CR>", "Alacritty"},
  ["z"] = {"<cmd>e ~/.zshrc<CR>", "Zshrc"},
  ["w"] = {"<cmd>w!<CR>", "Save"},
  ["q"] = {"<cmd>q!<CR>", "Quit"},
  ["/"] = {"<cmd>CommentToggle<CR>", "Comment"},
  ["d"] = {"<cmd>BufferClose<CR>", "Close Buffer"},
  ["e"] = {"<cmd>:Ex<CR>", "Explorer"},
  ["f"] = {"<cmd>Telescope find_files<CR>", "Find File"},
  ["r"] = {"<cmd>Telescope live_grep<CR>", "Rg"},
  ["h"] = {'<cmd>let @/=""<CR>', "No Highlight"},
  ["p"] = {"<cmd>lua vim.lsp.buf.formatting_sync(nil, 100)<cr>", "Format"},
  g = {
    name = "Git",
    j = {"<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk"},
    k = {"<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk"},
    l = {"<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame"},
    p = {"<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk"},
    r = {"<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk"},
    R = {"<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer"},
    s = {"<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk"},
    u = {
      "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
      "Undo Stage Hunk"
    },
    o = {"<cmd>Telescope git_status<cr>", "Open changed file"},
    b = {"<cmd>Telescope git_branches<cr>", "Checkout branch"},
    c = {"<cmd>Telescope git_commits<cr>", "Checkout commit"},
    C = {
      "<cmd>Telescope git_bcommits<cr>",
      "Checkout commit(for current file)"
    }
  },
  B = {
    name = "Buffers",
    j = {"<cmd>BufferPick<cr>", "jump to buffer"},
    f = {"<cmd>Telescope buffers<cr>", "Find buffer"},
    w = {"<cmd>BufferWipeout<cr>", "wipeout buffer"},
    e = {
      "<cmd>BufferCloseAllButCurrent<cr>",
      "close all but current buffer"
    },
    h = {"<cmd>BufferCloseBuffersLeft<cr>", "close all buffers to the left"},
    l = {
      "<cmd>BufferCloseBuffersRight<cr>",
      "close all BufferLines to the right"
    },
    D = {
      "<cmd>BufferOrderByDirectory<cr>",
      "sort BufferLines automatically by directory"
    },
    L = {
      "<cmd>BufferOrderByLanguage<cr>",
      "sort BufferLines automatically by language"
    }
  },
  T = {
    name = "Treesitter",
    i = {":TSConfigInfo<cr>", "Info"}
  }
}

wk.register(mappings, opts)

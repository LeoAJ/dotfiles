local wk = require "which-key"

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true -- use `nowait` when creating keymaps
}

local mappings = {
  ["w"] = {"<cmd>w!<CR>", "Save"},
  ["q"] = {"<cmd>q!<CR>", "Quit"},
  ["/"] = {"<cmd>CommentToggle<CR>", "Comment"},
  ["d"] = {"<cmd>BufferClose<CR>", "Close Buffer"},
  ["e"] = {"<cmd>lua require'core.nvimtree'.toggle_tree()<CR>", "Explorer"},
  ["f"] = {"<cmd>Telescope find_files<CR>", "Find File"},
  ["h"] = {'<cmd>let @/=""<CR>', "No Highlight"},
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

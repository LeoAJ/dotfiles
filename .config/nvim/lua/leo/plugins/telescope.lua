return {
  "nvim-telescope/telescope.nvim",
  version = "*",
  -- tag = "0.1.6",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    "camgraff/telescope-tmux.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")
    -- local actions = require("telescope.actions")
    telescope.setup({
      defaults = {
        -- preview = {
        -- 	treesitter = false,
        -- },
        path_display = { truncate = 2 },
        file_ignore_patterns = { "node_modules", ".git" },
      },
      extension = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({}),
        },
      },
    })

    telescope.load_extension("ui-select")
    telescope.load_extension("fzf")
    -- telescope.load_extension("noice")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>r", function()
      builtin.live_grep({
        additional_args = {
          "--hidden",
        }
      })
    end, { desc = "Find string in cwd" })

    keymap.set("n", "<leader>f", "<cmd>Telescope frecency workspace=CWD<cr>", { desc = "frecency" })
    keymap.set("n", "<leader>s", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Document symbols" })
    keymap.set("n", "<leader>w", "<cmd>Telescope tmux sessions<cr>", { desc = "Search tmux sessions" })
    keymap.set("n", "<leader>q", "<cmd>Telescope tmux windows<cr>", { desc = "Search tmux windows" })
  end,
}

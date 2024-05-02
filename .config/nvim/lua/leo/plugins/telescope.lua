return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
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
				-- path_display = { truncate = 2 },
			},
			extension = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
		})

		telescope.load_extension("ui-select")
		telescope.load_extension("fzf")
		telescope.load_extension("persisted")
		-- telescope.load_extension("noice")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		-- keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		-- keymap.set("n", "<leader>r", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>f", function()
			builtin.find_files({ hidden = true })
		end, { desc = "Fuzzy find files in cwd" })

		keymap.set("n", "<leader>r", function()
			builtin.live_grep({ additional_args = {
				"--hidden",
			} })
		end, { desc = "Find string in cwd" })

		keymap.set("n", "<leader>b", "<cmd>Telescope buffers<cr>", { desc = "Search buffers" })
		keymap.set("n", "<leader>s", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Document symbols" })
		keymap.set("n", "<leader>w", "<cmd>Telescope tmux sessions<cr>", { desc = "Search tmux sessions" })
		keymap.set("n", "<leader>q", "<cmd>Telescope tmux windows<cr>", { desc = "Search tmux windows" })
	end,
}

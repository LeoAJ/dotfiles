return {
	"nvim-telescope/telescope.nvim",
	-- branch = "0.1.x",
	tag = "0.1.6",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")

		telescope.setup({
			extension = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
		})
		-- local builtin = require("telescope.builtin")
		-- local actions = require("telescope.actions")
		-- telescope.setup({
		-- 	defaults = {
		-- 		path_display = { "truncate " },
		-- 		mappings = {
		-- 			i = {
		-- 				["<C-k>"] = actions.move_selection_previous, -- move to prev result
		-- 				["<C-j>"] = actions.move_selection_next, -- move to next result
		-- 				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
		-- 			},
		-- 		},
		-- 	},
		-- })

		telescope.load_extension("ui-select")
		telescope.load_extension("fzf")
		-- telescope.load_extension("noice")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>r", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>b", "<cmd>Telescope buffers<cr>", { desc = "Search buffers" })
		keymap.set("n", "<leader>s", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "document symbols" })
	end,
}

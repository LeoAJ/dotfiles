return {
	"ruifm/gitlinker.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("gitlinker").setup({
			opts = {
				remote = nil, -- force the use of a specific remote
				-- adds current line nr in the url for normal mode
				add_current_line_on_normal_mode = true,
				-- callback for what to do with the url
				action_callback = require("gitlinker.actions").copy_to_clipboard,
				-- print the url after performing the action
				print_url = true,
			},
			mappings = nil,
		})
		vim.api.nvim_set_keymap(
			"n",
			"<leader>gb",
			'<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
			{ silent = true }
		)
		vim.api.nvim_set_keymap(
			"v",
			"<leader>gb",
			'<cmd>lua require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
			{}
		)
	end,
}

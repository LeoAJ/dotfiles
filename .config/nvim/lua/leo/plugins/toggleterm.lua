return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			shell = vim.o.shell,
			size = 10,
			open_mapping = [[<c-\>]],
			shading_factor = 2,
			direction = "horizontal",
			-- float_opts = {
			-- 	border = "curved",
			-- 	highlights = {
			-- 		border = "Normal",
			-- 		background = "Normal",
			-- 	},
			-- },
		})

		vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<cr>")
	end,
}

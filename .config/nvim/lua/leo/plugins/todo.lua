return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	event = "VimEnter",
	config = function()
		require("todo-comments").setup()
		vim.keymap.set("n", "<leader>l", "<cmd>TodoLocList<cr>")
	end,
}

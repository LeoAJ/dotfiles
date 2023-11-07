return {
	"folke/flash.nvim",
	event = "VeryLazy",
	keys = {
		{
			"<leader>j",
			function()
				require("flash").jump()
			end,
			desc = "Flash",
		},
	},
}

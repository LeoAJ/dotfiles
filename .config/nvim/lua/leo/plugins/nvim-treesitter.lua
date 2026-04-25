return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		-- dependencies = {
		-- 	"nvim-treesitter/nvim-treesitter-textobjects",
		-- 	"windwp/nvim-ts-autotag",
		-- },
		opts = {
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"markdown",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"python",
			},
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
}

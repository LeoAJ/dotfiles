return {
	{
		"catppuccin/nvim",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
				flavour = "mocha",
				auto_integrations = true,
			})
			vim.cmd.colorscheme("catppuccin-nvim")
			vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffcc00", bold = true })
		end,
	},
}

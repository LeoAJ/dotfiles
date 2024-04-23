-- return {
-- 	"savq/melange-nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd("colorscheme melange")
-- 	end,
-- }

-- return {
-- 	"sainnhe/gruvbox-material",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.g.gruvbox_material_transparent_background = 0
-- 		vim.g.gruvbox_material_foreground = "mix"
-- 		vim.g.gruvbox_material_background = "hard" -- soft, medium, hard
-- 		vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
-- 		vim.g.gruvbox_material_float_style = "bright" -- Background of floating windows
-- 		vim.g.gruvbox_material_statusline_style = "material"
-- 		vim.g.gruvbox_material_cursor = "auto"
-- 		vim.cmd("colorscheme gruvbox-material")
-- 	end,
-- }

return {
	{
		"catppuccin/nvim",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				transparent_background = false,
				flavour = "mocha",
			})
			vim.cmd("colorscheme catppuccin")
		end,
	},
}

-- return {
-- 	{
-- 		"ntk148v/habamax.nvim",
-- 		dependencies = { "rktjmp/lush.nvim" },
-- 		config = function()
-- 			vim.cmd("colorscheme habamax")
-- 		end,
-- 	},
-- }

-- return {
-- 	"rose-pine/neovim",
-- 	priority = 1000, -- make sure to load this before all the other start plugins
-- 	config = function()
-- 		require("rose-pine").setup({
-- 			-- disable_background = true,
-- 			styles = {
-- 				italic = false,
-- 			},
-- 		})
-- 		vim.cmd("colorscheme rose-pine")
-- 	end,
-- }

-- return {
-- 	{
-- 		"blazkowolf/gruber-darker.nvim",
-- 		priority = 1000, -- make sure to load this before all the other start plugins
-- 		config = function()
-- 			vim.cmd("colorscheme gruber-darker")
-- 		end,
-- 	},
-- }

-- return {
-- 	{
-- 		"neanias/everforest-nvim",
-- 		version = false,
-- 		lazy = false,
-- 		priority = 1000, -- make sure to load this before all the other start plugins
-- 		-- Optional; default configuration will be used if setup isn't called.
-- 		config = function()
-- 			vim.cmd("colorscheme everforest")
-- 		end,
-- 	},
-- }

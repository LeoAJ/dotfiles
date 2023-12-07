-- return {
--   {
--     "catppuccin/nvim",
--     priority = 1000,
--     config = function()
--       vim.cmd("colorscheme catppuccin-mocha")
--     end,
--   }
-- }

-- return {
-- 	{
-- 		"ntk148v/habamax.nvim",
-- 		dependencies = { "rktjmp/lush.nvim" },
-- 		config = function()
-- 			vim.cmd("colorscheme habamax")
-- 		end,
-- 	},
-- }

return {
	{
		"blazkowolf/gruber-darker.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			vim.cmd("colorscheme gruber-darker")
		end,
	},
}

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

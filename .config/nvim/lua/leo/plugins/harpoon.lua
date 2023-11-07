return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")
		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<leader>a", mark.add_file)
		keymap.set("n", "<C-t>", ui.toggle_quick_menu)
		keymap.set("n", "<C-q>", function()
			ui.nav_file(1)
		end)
		keymap.set("n", "<C-w>", function()
			ui.nav_file(2)
		end)
		keymap.set("n", "<C-e>", function()
			ui.nav_file(3)
		end)
		keymap.set("n", "<C-r>", function()
			ui.nav_file(4)
		end)
	end,
}

local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end
local builtin = require("telescope.builtin")

telescope.load_extension("notify")
telescope.load_extension("fzf")

-- telescope
vim.keymap.set("n", "<leader>f", builtin.find_files, {})
vim.keymap.set("n", "<leader>F", function()
	builtin.find_files({ hidden = true, no_ignore = true })
end)
vim.keymap.set("n", "<leader>r", builtin.live_grep, {})

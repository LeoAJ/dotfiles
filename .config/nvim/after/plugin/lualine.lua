local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local code_dark = require("lualine.themes.codedark")

-- configure lualine with modified theme
lualine.setup({
	options = {
		theme = code_dark,
	},
})

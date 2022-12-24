local status_ok, dressing = pcall(require, "dressing")
if not status_ok then
	return
end

dressing.setup({
	input = {
		enabled = true,
		default_prompt = "➤ ",
		win_options = {
			highlight = "Normal:Normal,NormalNC:Normal",
		},
	},
	select = {
		enabled = true,
		backend = { "telescope", "builtin" },
		builtin = {
			win_options = {
				winhighlight = "Normal:Normal,NormalNC:Normal",
			},
		},
	},
})

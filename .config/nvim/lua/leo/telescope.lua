local status_ok, telescope = pcall(require, "telescope")
if not status_ok then return end
local actions = require "telescope.actions"

telescope.load_extension('notify')
telescope.load_extension('fzf')

telescope.setup {
  defaults = {
    prompt_prefix = " ",
    selection_caret = "❯ ",
    path_display = { "truncate" },
    sorting_strategy = "ascending",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    }
  },
  mappings = {
    i = {
      ["<C-n>"] = actions.cycle_history_next,
      ["<C-p>"] = actions.cycle_history_prev,
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
    },
    n = { ["q"] = actions.close },
  },
}

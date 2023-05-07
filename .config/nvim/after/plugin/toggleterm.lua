local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  return
end

toggleterm.setup({
  shell = vim.o.shell,
  size = 10,
  open_mapping = [[<c-\>]],
  shading_factor = 2,
  direction = "float",
  float_opts = {
    border = "curved",
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
})

-- vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm direction=horizontal<cr>")
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<cr>")

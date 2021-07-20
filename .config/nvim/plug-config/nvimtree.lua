local nvimtree = {
  side = "left",
  show_icons = {
    git = 1,
    folders = 1,
    files = 1,
    folder_arrows = 1,
    tree_width = 30,
  },
  ignore = { ".git", "node_modules", ".cache" },
  auto_open = 1,
  auto_close = 1,
  quit_on_open = 0,
  follow = 1,
  hide_dotfiles = 1,
  git_hl = 1,
  root_folder_modifier = ":t",
  tab_open = 0,
  allow_resize = 1,
  lsp_diagnostics = 1,
  auto_ignore_ft = { "startify", "dashboard" },
  icons = {
    default = "",
    symlink = "",
    git = {
      unstaged = "",
      staged = "S",
      unmerged = "",
      renamed = "➜",
      deleted = "",
      untracked = "U",
      ignored = "◌",
    },
    folder = {
      default = "",
      open = "",
      empty = "",
      empty_open = "",
      symlink = "",
    },
  },
}

local status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not status_ok then
  return
end
local g = vim.g

for opt, val in pairs(nvimtree) do
  g["nvim_tree_" .. opt] = val
end

local tree_cb = nvim_tree_config.nvim_tree_callback

g.nvim_tree_bindings = {
  { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
  { key = "h", cb = tree_cb "close_node" },
  { key = "v", cb = tree_cb "vsplit" },
}

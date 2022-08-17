local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then return end

bufferline.setup {
  options = {
    show_close_icon = false,
    show_buffer_close_icons = false,
    -- buffer_close_icon = "",
    modified_icon = "",
    -- close_icon = "",
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 20,
    separator_style = "thin",
  }
}

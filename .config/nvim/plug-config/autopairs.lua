local remap = vim.api.nvim_set_keymap
local npairs = require('nvim-autopairs')

-- skip it, if you use another global object
_G.MUtils= {}

MUtils.completion_confirm=function()
  if vim.fn.pumvisible() ~= 0  then
      return npairs.esc("<cr>")
  else
    return npairs.autopairs_cr()
  end
end

if package.loaded["compe"] then
  require("nvim-autopairs.completion.compe").setup {
    map_cr = true, --  map <CR> on insert mode
    map_complete = true, -- it will auto insert `(` after select function or method item
  }
end

npairs.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add pair on that treesitter node
        javascript = {'template_string'},
        java = false,-- don't check treesitter on java
    }
})

require('nvim-treesitter.configs').setup {
    autopairs = {enable = true}
}

local luasnip_avail, luasnip = pcall(require, "luasnip")
local loader_avail, loader = pcall(require, "luasnip/loaders/from_vscode")
if not (luasnip_avail and loader_avail) then return end

loader.lazy_load()

local filetype_extend = {
  javascript = { "javascriptreact" },
}

for filetype, snippets in pairs(filetype_extend) do
  luasnip.filetype_extend(filetype, snippets)
end

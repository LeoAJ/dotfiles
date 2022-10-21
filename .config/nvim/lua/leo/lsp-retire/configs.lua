-- local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
-- if not status_ok then
-- 	return
-- end

local lspconfig = require("lspconfig")
local servers = {
  'rust_analyzer',
  'tsserver',
  'sumneko_lua'
}

for _, server in ipairs(servers) do
  local opts = {
    on_attach = require("leo.lsp.handlers").on_attach,
		capabilities = require("leo.lsp.handlers").capabilities,
  }

  if server == 'rust_analyzer' then
    require('rust-tools').setup({
      server = {
        on_attach = require("leo.lsp.handlers").on_attach,
		    capabilities = require("leo.lsp.handlers").capabilities,
      }
    })
  end

  local has_custom_opts, server_custom_opts = pcall(require, "leo.lsp.settings." .. server)
  if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end
	-- print(server)
  lspconfig[server].setup(opts)
end

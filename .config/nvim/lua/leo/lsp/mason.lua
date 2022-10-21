local mason_status_ok, mason = pcall(require, "mason")
if not mason_status_ok then return end

local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status_ok then return end

local mason_null_ls_status_ok, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status_ok then return end

mason.setup()

mason_lspconfig.setup({
  ensure_installed = {
    "tsserver",
		"cssls",
		"rust_analyzer",
		"sumneko_lua",
  },
  automatic_installation = true
})

mason_null_ls.setup({
  ensure_installed = {
    "prettier", -- ts/js formatter
		"stylua", -- lua formatter
		"eslint_d", -- ts/js linter
		"rustfmt", -- ts/js linter
  },
  automatic_installation = true
})

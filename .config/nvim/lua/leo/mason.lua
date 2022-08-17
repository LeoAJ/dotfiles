require("mason").setup({
  max_concurrent_installers = 4,
  log_level = vim.log.levels.INFO,
  ui = {
    border = "rounded",
    icons = {
      package_installed = "✓",
      package_uninstalled = "✗",
      package_pending = "⟳",
    },
  },
})

require("mason-lspconfig").setup({
  automatic_installation = true,
  ensure_installed = {
    'rust_analyzer',
    'tsserver',
    'sumneko_lua'
  }
})

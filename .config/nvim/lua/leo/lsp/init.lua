local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require('leo.lsp.configs')
require('leo.lsp.handlers').setup()

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
  -- lsp.buffer_autoformat()
end)

lsp.format_on_save({
  servers = {
    ['lua_ls'] = { 'lua' },
    ['rust_analyzer'] = { 'rust' },
    ['null-ls'] = {
      'python',
      'javascript',
      'javascriptreact',
      'typescript',
      'typescriptreact',
      'yaml',
      'html',
      'css',
      'json',
      'graphql',
      'markdown'
    },
  }
})

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
-- lsp.setup_servers({ "tsserver", "eslint", "lua_ls", "rust_analyzer", "pyright" })

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.prettier,
  }
})

local rust_tools = require('rust-tools')

rust_tools.setup({
  server = {
    on_attach = function()
      vim.keymap.set('n', '<leader>ca', rust_tools.hover_actions.hover_actions, { buffer = bufnr })
    end
  }
})

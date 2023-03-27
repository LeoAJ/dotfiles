local lsp_status_ok, lsp = pcall(require, "lsp-zero")
local cmp_status_ok, cmp = pcall(require, "cmp")
local null_ls_status_ok, null_ls = pcall(require, "null-ls")

if not (cmp_status_ok and lsp_status_ok and null_ls_status_ok) then return end

lsp.preset("recommended")

lsp.ensure_installed({ "tsserver", "eslint", "lua_ls", "rust_analyzer", "pyright" })

lsp.configure("lua_ls",
  { settings = { Lua = { diagnostics = { globals = { "vim" } } } } })

-- local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  -- ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  -- ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  -- ['<C-y>'] = cmp.mapping.confirm({select = true}),
  -- ["<C-Space>"] = cmp.mapping.complete(),
  ["<CR>"] = cmp.mapping.confirm({ select = false }),
  ['<Tab>'] = function(fallback)
    if cmp.visible() then
      cmp.select_next_item()
    else
      fallback()
    end
  end,
  ['<S-Tab>'] = function(fallback)
    if cmp.visible() then
      cmp.select_prev_item()
    else
      fallback()
    end
  end
})

-- disable completion with tab
-- this helps with copilot setup
-- cmp_mappings['<Tab>'] = nil
-- cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({ mapping = cmp_mappings })

lsp.set_preferences({
  suggest_lsp_servers = false,
  sign_icons = { error = "✘", warn = "▲", hint = "⚑", info = "" }
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  if client.name == "eslint" then
    vim.cmd.LspStop("eslint")
    return
  end

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  -- vim.keymap.set("n", "gD", vim.lsp.buf., opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  -- ?
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
  -- ?
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
  -- vim.keymap.set("n", "<leader>s", vim.lsp.buf.signature_help, opts)
end)

-- rust tools
local rust_lsp = lsp.build_options("rust_analyzer", {})
require("rust-tools").setup({ server = rust_lsp })

-- null-ls
local null_opts = lsp.build_options("null-ls", {})
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
-- local diagnostics = null_ls.builtins.diagnostics

-- to setup format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local null_sources = {
  formatting.prettier,
  formatting.rustfmt
  -- .with({
  --   extra_args = function(params)
  --     print(params)
  --     return params.options and { "tab_spaces", 2 }
  --   end
  -- }),
  -- formatting.lua_format.with({
  --   extra_args = function(params)
  --     return params.options and params.options.tabSize and { "--indent-width", 2 }
  --   end
  -- })
}

null_ls.setup({
  debug = false,
  sources = null_sources,
  on_attach = function(current_client, bufnr)
    null_opts.on_attach(current_client, bufnr)
    if current_client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({
            filter = function(client)
              --  only use null-ls for formatting instead of lsp server
              return client.name == "null-ls"
            end,
            bufnr = bufnr
          })
        end
      })
    end
  end
})

lsp.setup()
require('luasnip.loaders.from_snipmate').lazy_load()

vim.diagnostic.config({
  virtual_text = {
    -- source = "always",  -- Or "if_many"
    prefix = '●', -- Could be '■', '▎', 'x'
  },
  severity_sort = true,
  float = {
    source = "always", -- Or "if_many"
  },
})

return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{
			"folke/lazydev.nvim",
			ft = "lua", -- only load on lua files
			opts = {
				library = {
					-- See the configuration section for more details
					-- Load luvit types when the `vim.uv` word is found
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			},
		},
	},
	config = function()
		-- import lspconfig plugin
		local lspconfig = require("lspconfig")
		local navic = require("nvim-navic")
		local capabilities = require("blink.cmp").get_lsp_capabilities()
		local bufnr = vim.api.nvim_get_current_buf()
		-- local keymap = vim.keymap -- for conciseness

		-- local opts = { noremap = true, silent = true }

		-- Change the Diagnostic symbols in the sign column (gutter)
		-- (not in youtube nvim video)
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		local on_attach = function(client, bufnr)
			if client.server_capabilities.documentSymbolProvider then
				navic.attach(client, bufnr)
			end
		end

		-- vim.keymap.set("n", "<leader>a", function()
		-- 	vim.cmd.RustLsp("codeAction") -- supports rust-analyzer's grouping
		-- 	-- or vim.lsp.buf.codeAction() if you don't want grouping.
		-- end, { silent = true, buffer = bufnr })
		-- vim.keymap.set(
		-- 	"n",
		-- 	"K", -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
		-- 	function()
		-- 		vim.cmd.RustLsp({ "hover", "actions" })
		-- 	end,
		-- 	{ silent = true, buffer = bufnr }
		-- )

		-- lspconfig["tsserver"].setup({})
		-- lspconfig["pyright"].setup({})
		lspconfig.lua_ls.setup({ capabilities = capabilities, on_attach = on_attach })
		lspconfig.ts_ls.setup({ capabilities = capabilities, on_attach = on_attach })
		lspconfig.pyright.setup({ capabilities = capabilities, on_attach = on_attach })
	end,
}

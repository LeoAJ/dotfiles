return {
	"VonHeikemen/lsp-zero.nvim",
	version = "v3.x",
	dependencies = {
		-- LSP Support
		{ "neovim/nvim-lspconfig" }, -- Required
		{
			-- Optional
			"williamboman/mason.nvim",
		},
		{ "williamboman/mason-lspconfig.nvim" }, -- Optional
		-- Autocompletion
		{ "hrsh7th/nvim-cmp" }, -- Required
		{ "hrsh7th/cmp-nvim-lsp" }, -- Required
		{ "L3MON4D3/LuaSnip" }, -- Required
		{ "hrsh7th/cmp-buffer" }, -- Optional
		{ "hrsh7th/cmp-path" }, -- Optional
		{ "hrsh7th/cmp-cmdline" }, -- Optional
		{ "saadparwaiz1/cmp_luasnip" }, -- Optional
		{ "hrsh7th/cmp-nvim-lua" }, -- Optional

		{ "simrat39/rust-tools.nvim" },
	},
	config = function()
		local lsp_zero = require("lsp-zero")
		local cmp = require("cmp")

		-- `/` cmdline setup.
		cmp.setup.cmdline("/", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = "buffer" },
			},
		})

		-- `:` cmdline setup.
		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "path" },
			}, {
				{
					name = "cmdline",
					option = {
						ignore_cmds = { "Man", "!" },
					},
				},
			}),
		})

		lsp_zero.set_sign_icons({ error = " ", warn = " ", hint = "󰠠 ", info = " " })

		lsp_zero.on_attach(function(client, bufnr)
			-- see :help lsp-zero-keybindings
			-- to learn the available actions
			lsp_zero.default_keymaps({ buffer = bufnr })
			vim.keymap.set("n", "gca", "<cmd>:lua vim.lsp.buf.code_action()<cr>", { buffer = bufnr })
		end)

		require("mason-lspconfig").setup({
			ensure_installed = {
				"rust_analyzer",
				"tsserver",
				"lua_ls",
				"graphql",
				"emmet_ls",
				"pyright",
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
			handlers = {
				lsp_zero.default_setup,
				lua_ls = function()
					local lua_opts = lsp_zero.nvim_lua_ls()
					require("lspconfig").lua_ls.setup(lua_opts)
				end,
			},
		})

		local lsp = require("lsp-zero").preset({})

		lsp.configure("tsserver", {
			settings = {
				filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript" },
			},
		}, { force_setup = true })

		-- require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())
		--
		local rust_tools = require("rust-tools")
		rust_tools.setup({
			server = {
				on_attach = function()
					-- vim.keymap.set("n", "<leader>cc", rust_tools.hover_actions.hover_actions, { buffer = bufnr })
					-- vim.keymap.set(
					-- 	"n",
					-- 	"<leader>ca",
					-- 	rust_tools.code_action_group.code_action_group,
					-- 	{ buffer = bufnr }
					-- )
				end,
			},
		})
	end,
}

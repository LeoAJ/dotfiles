local status_ok, packer = pcall(require, "packer")
if status_ok then
	packer.startup({
		function() end,
		config = {
			compile_path = vim.fn.stdpath("data") .. "/packer_compiled.lua",
			auto_clean = true,
			compile_on_sync = true,
			display = {
				open_fn = function()
					return require("packer.util").float({ border = "rounded" })
				end,
			},
		},
	})
end

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")

	-- essential plugins
	use("tpope/vim-surround")

	-- vim cool
	use("romainl/vim-cool")

	-- Optimiser
	use("lewis6991/impatient.nvim")

	-- icons
	use("kyazdani42/nvim-web-devicons")

	-- Indent detection
	-- use 'Darazaki/indent-o-matic'

	-- Parenthesis highlighting
	use("p00f/nvim-ts-rainbow")

	-- Autoclose tags
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })

	-- Autopairs
	use("windwp/nvim-autopairs")

	-- Notification Enhancer
	use("rcarriga/nvim-notify")

	-- Neovim UI Enhancer
	use("stevearc/dressing.nvim")

	-- Cursorhold fix
	use({
		"antoinemadec/FixCursorHold.nvim",
		config = function()
			vim.g.cursorhold_updatetime = 100
		end,
	})

	-- theme
	use("bluz71/vim-nightfly-guicolors")

	-- comment
	use("numToStr/Comment.nvim")

	-- LSP
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("onsails/lspkind-nvim")

	-- cmp
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- tree sitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("nvim-treesitter/nvim-treesitter-context")
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- mason
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- fuzzy finder
	use("nvim-telescope/telescope.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- bufferline
	use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })

	use("lewis6991/gitsigns.nvim")

	use("max397574/better-escape.nvim")

	use("lukas-reineke/indent-blankline.nvim")

	use("akinsho/toggleterm.nvim")

	-- use 'feline-nvim/feline.nvim'
	use("nvim-lualine/lualine.nvim")

	-- rust
	use("simrat39/rust-tools.nvim")
end)

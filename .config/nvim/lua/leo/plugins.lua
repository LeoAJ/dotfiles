local status_ok, packer = pcall(require, "packer")
if status_ok then
  packer.startup {
    function()
    end,
    config = {
      compile_path = vim.fn.stdpath "data" .. "/packer_compiled.lua",
      auto_clean = true,
      compile_on_sync = true,
      display = {
        open_fn = function() return require("packer.util").float { border = "rounded" } end
      }
    }
  }
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'

  -- vim cool
  use 'romainl/vim-cool'

  -- Optimiser
  use 'lewis6991/impatient.nvim'

  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- Indent detection
  -- use 'Darazaki/indent-o-matic'

  -- Parenthesis highlighting
  use 'p00f/nvim-ts-rainbow'

  -- Autoclose tags
  use 'windwp/nvim-ts-autotag'

  -- Autopairs
  use 'windwp/nvim-autopairs'

  -- Notification Enhancer
  use 'rcarriga/nvim-notify'

  -- Neovim UI Enhancer
  use 'stevearc/dressing.nvim'

  -- Cursorhold fix
  use {
    'antoinemadec/FixCursorHold.nvim',
    config = function()
      vim.g.cursorhold_updatetime = 100
    end
  }

  -- theme
  use 'bluz71/vim-nightfly-guicolors'

  -- comment
  use 'numToStr/Comment.nvim'

  -- LSP
  -- use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'onsails/lspkind-nvim'

  -- cmp
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'

  -- tree sitter
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- snippets
  use 'L3MON4D3/LuaSnip'

  -- fuzzy finder
  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- bufferline
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- snippets
  use "rafamadriz/friendly-snippets"

  use 'lewis6991/gitsigns.nvim'

  use 'max397574/better-escape.nvim'

  use 'lukas-reineke/indent-blankline.nvim'

  use 'akinsho/toggleterm.nvim'

  use 'feline-nvim/feline.nvim'

  -- rust
  use 'simrat39/rust-tools.nvim'

  -- mason
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Get extra JSON schemas
  -- use 'b0o/SchemaStore.nvim'
end)

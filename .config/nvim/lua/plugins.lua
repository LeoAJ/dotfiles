return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'folke/lsp-colors.nvim'
  use({
    "tami5/lspsaga.nvim",
    commit = "276822b611b26be2e52a31d8eef1ccce30b819a5",
  })

  -- theme
  use 'gruvbox-community/gruvbox'

  -- comment
  use 'terrortylor/nvim-comment'

  -- autopair
  use 'windwp/nvim-autopairs'

  -- treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'

  -- telescope
  use 'nvim-lua/popup.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-fzy-native.nvim'

  -- Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use 'onsails/lspkind-nvim'

  use 'romainl/vim-cool'

  -- tab
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- whick key
  use 'folke/which-key.nvim'
end)

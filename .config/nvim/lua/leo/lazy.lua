local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "nvim-lua/plenary.nvim",

  "tpope/vim-surround",

  "romainl/vim-cool",

  "lewis6991/impatient.nvim",

  "p00f/nvim-ts-rainbow",

  { "windwp/nvim-ts-autotag",          priority = 200 },

  "windwp/nvim-autopairs",

  "rcarriga/nvim-notify",

  "stevearc/dressing.nvim",

  {
    "antoinemadec/FixCursorHold.nvim",
    config = function()
      vim.g.cursorhold_updatetime = 100
    end
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      vim.cmd("colorscheme catppuccin-mocha")
    end,
    priority = 1000
  },

  "numToStr/Comment.nvim",

  "honza/vim-snippets",

  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },         -- Required
      { 'hrsh7th/cmp-nvim-lsp' },     -- Required
      { 'L3MON4D3/LuaSnip' },         -- Required
      { 'hrsh7th/cmp-buffer' },       -- Optional
      { 'hrsh7th/cmp-path' },         -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' },     -- Optional
    }
  },

  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  "nvim-treesitter/nvim-treesitter-context",

  "JoosepAlviste/nvim-ts-context-commentstring",

  "nvim-telescope/telescope.nvim",

  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

  -- "jose-elias-alvarez/null-ls.nvim",
  -- "jayp0521/mason-null-ls.nvim",
  {
    'akinsho/bufferline.nvim',
    version = "v3.*",
    dependencies =
    'nvim-tree/nvim-web-devicons'
  },

  { 'jose-elias-alvarez/null-ls.nvim',          dependencies = 'nvim-lua/plenary.nvim' },

  "lewis6991/gitsigns.nvim",

  "max397574/better-escape.nvim",

  -- "lukas-reineke/indent-blankline.nvim",
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  "akinsho/toggleterm.nvim",

  "christoomey/vim-tmux-navigator",

  "nvim-lualine/lualine.nvim",

  "simrat39/rust-tools.nvim",

  "NvChad/nvterm"
})

local plugins = {
	'ryanoasis/vim-devicons',
	'honza/vim-snippets',
	'scrooloose/nerdtree',
	'preservim/nerdcommenter',
	'mhinz/vim-startify',
  "rebelot/kanagawa.nvim",
	'tpope/vim-fugitive',
	{ "nvim-telescope/telescope.nvim", tag = '0.1.5',  dependencies = {"nvim-lua/plenary.nvim",  "tsakirist/telescope-lazy.nvim" }},
	'tpope/vim-surround',
  -- Mason
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
  -- LSP
	'neovim/nvim-lspconfig',
	{'nvim-treesitter/nvim-treesitter', cmd =  'TSUpdate'},
  -- completion
	'nvim-lua/completion-nvim',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',
  -- snippets
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  'rafamadriz/friendly-snippets',
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	"folke/neodev.nvim",
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  'preservim/tagbar',
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  -- Flutter Tools
  {
    'akinsho/flutter-tools.nvim',
    lazy=false,
    config=true,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim'
    }
  },
}


-- Lazy Setup
require("lazy").setup(plugins)
require('config.treesitter')
require('config.completion')
require('config.mason')
require('config.lspconfig')
require('config.telescope')

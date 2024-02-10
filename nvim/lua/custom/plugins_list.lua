require('lazy').setup({
	{ "catppuccin/nvim",                     name = "catppuccin", priority = 1000 },
	{ "tpope/vim-fugitive" },
	{ "tpope/vim-rhubarb" },
	-- { "tpope/vim-sleuth"},
	{ "folke/which-key.nvim",                opts = {} },
	{ 'numToStr/Comment.nvim',               opts = {} },
	{ 'lukas-reineke/indent-blankline.nvim', main = 'ibl',        opts = {} },
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		dependencies = {
			{ 'nvim-lua/plenary.nvim' },
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
		}
	},
	{
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
		},
		build = ':TSUpdate'
	},
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			{ 'williamboman/mason.nvim',          config = true },
			{ 'williamboman/mason-lspconfig.nvim' },
			{ 'j-hui/fidget.nvim',                opts = {} },
			{ 'folke/neodev.nvim' },
		}
	},
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			{ 'L3MON4D3/LuaSnip',            build = 'make install_jsregexp' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-path' },
			{ 'rafamadriz/friendly-snippets' },
		}
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = {
			options = {
				icons_enabled = true,
				theme = 'auto',
				component_separators = '|',
				section_separators = '',
			}
		}
	},
}, {})


require('mason').setup()
require('mason-lspconfig').setup()
require('neodev').setup()

-- Plugins configs

require("custom/plugins_config/lualine")
require("custom/plugins_config/telescope")
require("custom/plugins_config/lsp")
require("custom/plugins_config/cmp")
require("custom/plugins_config/whichkey")

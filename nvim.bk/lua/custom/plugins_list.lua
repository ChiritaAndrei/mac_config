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
	{
		"mfussenegger/nvim-dap"
	},
	{
		"leoluz/nvim-dap-go",
		ft = "go",
		dependencies = "mfussenegger/nvim-dap",
		config = function(_, opts)
			require("dap-go").setup(opts)
		end
	},
	{

		"olexsmir/gopher.nvim",
		ft = "go",
		config = function(_, opts)
			require("gopher").setup(opts)
		end,
		build = function()
			vim.cmd [[silent! GoInstallDeps]]
		end,
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		}
	},
	{
		"rcarriga/nvim-dap-ui",
		ft = "go",
		dependencies = {
			"mfussenegger/nvim-dap"
		},
		config = function(_, opts)
			print("dapui setup call")
			require("dapui").setup(opts)
		end
	},
	{
		"theHamsta/nvim-dap-virtual-text",
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
		},
	},
}, {})


require('mason').setup()
require('mason-lspconfig').setup()
require('neodev').setup()

-- Plugins configs

require("custom/plugins_config/catppuccin")
require("custom/plugins_config/treesitter")
require("custom/plugins_config/lualine")
require("custom/plugins_config/telescope")
require("custom/plugins_config/lsp")
require("custom/plugins_config/cmp")
require("custom/plugins_config/whichkey")
require("custom/plugins_config/noice")
require("custom/plugins_config/dapui")

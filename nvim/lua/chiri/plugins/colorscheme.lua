return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent = false,
			terminal_colors = true,
			borders = true,
			default_integrations = true,
			dim_inactive = {
				enabled = false, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15, -- percentage of the shade to apply to the inactive window
			},
		})

		vim.cmd("colorscheme catppuccin")
	end,
}

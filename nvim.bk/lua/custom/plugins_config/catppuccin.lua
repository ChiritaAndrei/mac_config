require("catppuccin").setup({
	integrations = {
		mason = true,
		indent_blankline = {
			enabled = true,
			scope_color = "base",
			colored_indent_levels = true
		},
		cmp = true,
		noice = true,
		gitsigns = true,
		nvimtree = true,
		treesitter = true,
		notify = false,
		lsp_trouble = true,
		mini = {
			enabled = true,
			indentscope_color = "",
		},
	}
})

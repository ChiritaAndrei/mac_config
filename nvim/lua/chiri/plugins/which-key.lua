return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		local wk = require("which-key")
		wk.register({
			["<leader>c"] = { name = "[C]ode" },
			["<leader>e"] = { name = "[E]xplorer" },
			["<leader>f"] = { name = "[F]ind" },
			["<leader>h"] = { name = "[H]unks git" },
			["<leader>r"] = { name = "[R]efactor" },
			["<leader>s"] = { name = "[S]creen" },
			["<leader>t"] = { name = "[T]abs" },
			["<leader>x"] = { name = "[X]troubles" },
		})
	end,
}

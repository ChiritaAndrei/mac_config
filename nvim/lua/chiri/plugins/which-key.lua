return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		spec = {
			-- Add keybindings as part of the config using the new format
			{ "<leader>c", group = "[C]ode" },
			{ "<leader>e", group = "[E]xplorer" },
			{ "<leader>f", group = "[F]ind" },
			{ "<leader>h", group = "[H]unks git" },
			{ "<leader>r", group = "[R]efactor" },
			{ "<leader>s", group = "[S]creen" },
			{ "<leader>t", group = "[T]abs" },
			{ "<leader>x", group = "[X]troubles" },
			-- You can also add actual keymaps here
			-- { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
		},
	},
}

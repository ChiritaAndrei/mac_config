return {
	"olexsmir/gopher.nvim",
	ft = "go",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	build = function()
		vim.cmd.GoInstallDeps()
	end,
	config = function()
		vim.keymap.set("n", "<leader>gsj", "<cmd> GoTagAdd json <CR>", { desc = "Add json struct tags" })
		vim.keymap.set("n", "<leader>gsy", "<cmd> GoTagAdd yaml <CR>", { desc = "Add yaml struct tags" })
	end,
	opts = {},
}

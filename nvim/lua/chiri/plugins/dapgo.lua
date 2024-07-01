return {
	"leoluz/nvim-dap-go",
	ft = { "go" },
	dependencies = { "mfussenegger/nvim-dap" },
	config = function()
		vim.keymap.set("n", "<leader>dgt", function()
			require("dap-go").debug_test()
		end, { desc = "Debug go test" })
	end,
	opts = {},
}

-- return {}
return {
	"mfussenegger/nvim-dap",
	ft = { "go" },
	config = function()
		require("dapui").setup()
		require("dap-go").setup()

		vim.keymap.set("n", "<leader>dn", "<CMD> DapContinue<CR>", { desc = "Debug continue" })
		vim.keymap.set("n", "<leader>dl", "<CMD> DapStepInto<CR>", { desc = "Step into the current function" })
		vim.keymap.set("n", "<leader>dj", "<CMD> DapStepOver<CR>", { desc = "Step over the current function" })
		vim.keymap.set("n", "<leader>dh", "<CMD> DapStepOut<CR>", { desc = "Step out of the current function" })
		vim.keymap.set("n", "<leader>dz", "<CMD> ZoomWinTabToggle<CR>")
		vim.keymap.set("n", "<leader>db", "<CMD> DapToggleBreakpoint <CR>", { desc = "Debug toggle breakpoints" })
		vim.keymap.set("n", "<leader>dd", function()
			require("dapui").toggle()
		end, { desc = "Debugui toggle" })
		vim.keymap.set("n", "<leader>dc", function()
			require("dap").terminate()
			require("dapui").close()
		end, { desc = "Stop debugging" })
	end,
}

vim.keymap.set('n', '<leader>pv', ':Explore<CR>', { nowait = true, silent = true, desc = 'Open file explorer' })

-- Telescope key bindings

vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
		winblend = 10,
		previewer = false,
	})
end, { desc = '[/] Fuzzily search in current buffer' })

local function telescope_live_grep_open_files()
	require('telescope.builtin').live_grep {
		grep_open_files = true,
		prompt_title = 'Live Grep in Open Files',
	}
end
vim.keymap.set('n', '<leader>s/', telescope_live_grep_open_files, { desc = '[S]earch [/] in Open Files' })
vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>dt", ":lua require('dapui').toggle()<CR>", { noremap = true, desc = 'Debugger toggle ui' })
vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>", { noremap = true, desc = 'Debugger toggle breakpoint' })
vim.keymap.set("n", "<leader>dc", ":DapContinue<CR>", { noremap = true, desc = 'Debugger continue' })
vim.keymap.set("n", "<leader>dss", ":DapTerminate<CR>", { noremap = true, desc = 'Debugger terminate' })
vim.keymap.set("n", "<leader>dsi", ":DapStepInto<CR>", { noremap = true, desc = 'Debugger step into' })
vim.keymap.set("n", "<leader>dso", ":DapStepOver<CR>", { noremap = true, desc = 'Debugger step over' })
vim.keymap.set("n", "<leader>dsx", ":DapStepOut<CR>", { noremap = true, desc = 'Debugger step out' })
vim.keymap.set("n", "<leader>dr", ":lua require('dapui').open({reset = true})<CR>", { noremap = true, desc = 'Debugger reset ui' })

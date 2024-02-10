vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.hlsearch = false
vim.wo.number = true
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true


-- Autocommand to run configurations after all plugins are loaded
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd.colorscheme "catppuccin-mocha"
	end
})

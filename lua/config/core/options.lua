vim.opt.number = true
vim.opt.relativenumber = true

-- Enforce default tab size
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

vim.opt.scrolloff = 16

-- Prevent tabs from turning to spaces
vim.opt.expandtab = false

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.clipboard = "unnamedplus"

vim.opt.undofile = true

vim.g.have_nerd_font = true

vim.opt.termguicolors = true

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

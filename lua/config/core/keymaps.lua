-- Leader Key
vim.g.mapleader = " "

-- General
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear Search Highlighting" })
vim.keymap.set("n", "<leader>mm", "<cmd>Alpha<cr>", { desc = "Open Alpha" })
--Find

vim.keymap.set("n", "<leader>fv", "<cmd>Oil<cr>", { desc = "Open Oil file Browser" })

--Telescope

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzily Find Files with Telescope" })

vim.keymap.set("n", "<leader>fe", "<cmd>Telescope diagnostics<cr>", { desc = "Fuzzily Find Errors with Telescope" })
vim.keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzily Find Words with Telescope" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Fuzzily Find Help with Telescope" })

-- Conform Formatting
vim.keymap.set("n", "<leader>f", "<cmd>lua require('conform').format()<cr>", { desc = "Format" })

-- Start And End of File Jump (Big H and Big L)
vim.keymap.set({ "n", "x", "o" }, "H", "^", { desc = "Jump to Start of File" })
vim.keymap.set({ "n", "x", "o" }, "L", "$", { desc = "Jump to End of File" })

--LSP Binds
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show Hover" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Open Code Actions" })

--Persistence
-- load the session for the current directory
vim.keymap.set("n", "<leader>qs", function()
	require("persistence").load()
end, { desc = "Load Session for CWD" })

-- select a session to load
vim.keymap.set("n", "<leader>qS", function()
	require("persistence").select()
end, { desc = "Select Session to Load" })

-- load the last session
vim.keymap.set("n", "<leader>ql", function()
	require("persistence").load({ last = true })
end, { desc = "Load Last Session" })

-- stop Persistence => session won't be saved on exit
vim.keymap.set("n", "<leader>qd", function()
	require("persistence").stop()
end, { desc = "Stop Persistence" })

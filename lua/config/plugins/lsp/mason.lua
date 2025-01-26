return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")

		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			PATH = "prepend",
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		mason_lspconfig.setup({
			ensure_installed = {
				"biome",
				"clangd",
				"jdtls",
				"ltex",
				"lua_ls",
				"ruff",
				"rust_analyzer",
				"vimls",
				"zls",
			},
			automatic_installation = true,
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"clang-format", -- c/c++ formatter
				"ruff", -- python formatter
				"stylua", -- lua formatter
				"prettier", -- javascript, typescript, javascriptreact, typescriptreact, json, jsonc, css, html formatter
				"yq", -- yaml formatter
			},
			automatic_installation = true,
		})
	end,
}

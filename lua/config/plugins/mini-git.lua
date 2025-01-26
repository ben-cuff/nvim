return {
	{
		"echasnovski/mini-git",
		version = "*",
		main = "mini.git",
		config = function()
			require("mini.git").setup({})
		end,
	},
	{
		"echasnovski/mini.diff",
		version = "*",
		config = function()
			require("mini.diff").setup({})
		end,
	},
}

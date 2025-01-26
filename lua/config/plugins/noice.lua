return {
	-- lazy.nvim
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
		config = function()
			local noice = require("noice")
			local notify = require("notify")

			noice.setup({
				presets = {},
				views = {
					mini = {
						win_options = {
							winblend = 0,
						},
					},
				},
			})
			notify.setup({
				background_colour = "NotifyBackground",
			})
		end,
	},
}

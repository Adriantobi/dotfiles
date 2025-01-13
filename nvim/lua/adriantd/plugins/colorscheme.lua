return {
	-- Colorscheme
	"slugbyte/lackluster.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local theme = require("lackluster")
		local color = theme.color
		local devicons = require("nvim-web-devicons")

		theme.setup({
			tweak_background = {
				normal = color.black,
				telescope = color.black,
				menu = color.black,
				popup = color.black,
			},
		})

		devicons.setup({
			color_icons = false,
			override = {
				["default_icon"] = {
					color = theme.gray4,
					name = "Default",
				},
			},
		})

		vim.cmd.colorscheme("lackluster-night")
	end,
}

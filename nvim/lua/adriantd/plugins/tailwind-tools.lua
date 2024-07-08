return {
	"luckasRanarison/tailwind-tools.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		local tailwind_tools = require("tailwind-tools")

		tailwind_tools.setup({
			document_color = {
				enabled = true,
				kind = "inline",
				inline_symbol = "󰝤 ",
				debounce = 200,
			},
			conceal = {
				enabled = true,
				min_length = nil,
				symbol = "󱏿",
				highlight = {
					fg = "#38BDF8",
				},
			},
			custom_filetypes = {},
		})
	end,
}

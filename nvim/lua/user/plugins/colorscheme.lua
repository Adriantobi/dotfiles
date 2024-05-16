return {
	-- Hybrid Theme
	"catppuccin/nvim", -- Other themes: 'vimoxide/vim-cinnabar', 'alexanderbluhm/black.nvim', 'HoNamDuong/hybrid.nvim', HoNamDuong/hybrid.nvim'AlexvZyl/nordic.nvim', 'felipeagc/fleet-theme-nvim'
	lazy = false,
	priority = 1000,
	name = "catppuccin",
	config = function()
		local theme = require("catppuccin")

		theme.setup({
			flavour = "mocha",
			term_colors = true,
			transparent_background = false,
			color_overrides = {
				mocha = {
					base = "#000000",
					mantle = "#000000",
					crust = "#000000",
				},
			},
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}

return {
	-- Colorscheme
	-- 'f-person/auto-dark-mode.nvim'
	"catppuccin/nvim", --Other themes: 'sar/extra-darkplus.nvim', '2nthony/vitesse.nvim', 'projekt0n/github-nvim-theme', 'HoNamDuong/hybrid.nvim', 'vimoxide/vim-cinnabar', 'alexanderbluhm/black.nvim', 'Murtaza-Udaipurwala/gruvqueen', 'AlexvZyl/nordic.nvim', 'felipeagc/fleet-theme-nvim'
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	-- dependencies = {
	-- 	"tjdevries/colorbuddy.nvim",
	-- },
	config = function()
		local theme = require("catppuccin")

		theme.setup({
			flavour = "mocha",
			term_colors = true,
			transparent_background = false,
			no_italic = false,
			no_bold = false,
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

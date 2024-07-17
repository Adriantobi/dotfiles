return {
	-- Neovim Greeter
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local fortune = require("alpha.fortune")
		local header = require("headers").get_header()

		dashboard.section.header.val = header
		dashboard.section.buttons.val = {
			dashboard.button("e", "  New File", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "󰈞  Find file", ":Telescope find_files<CR>"),
			dashboard.button("r", "  Restore session", ":SessionRestore<CR>"),
			dashboard.button("m", "󰱼  Word Finder", ":Telescope live_grep<CR>"),
			dashboard.button("l", "  Marks", ":Telescope marks<CR>"),
			dashboard.button("q", "󰩈  Quit Nvim", ":qa<CR>"),
		}
		dashboard.section.footer.val = fortune()

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[
		      autocmd FileType alpha setlocal nofoldenable
		]])
	end,
}

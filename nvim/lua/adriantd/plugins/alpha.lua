return {
	-- Neovim Greeter
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.header.val = {
			[[                                                                                   ]],
			[[     /\__\         /\  \         /\  \         /\__\          ___        /\__\     ]],
			[[    /::|  |       /::\  \       /::\  \       /:/  /         /\  \      /::|  |    ]],
			[[   /:|:|  |      /:/\:\  \     /:/\:\  \     /:/  /          \:\  \    /:|:|  |    ]],
			[[  /:/|:|  |__   /::\~\:\  \   /:/  \:\  \   /:/__/  ___      /::\__\  /:/|:|__|__  ]],
			[[ /:/ |:| /\__\ /:/\:\ \:\__\ /:/__/ \:\__\  |:|  | /\__\  __/:/\/__/ /:/ |::::\__\ ]],
			[[ \/__|:|/:/  / \:\~\:\ \/__/ \:\  \ /:/  /  |:|  |/:/  / /\/:/  /    \/__/~~/:/  / ]],
			[[     |:/:/  /   \:\ \:\__\    \:\  /:/  /   |:|__/:/  /  \::/__/           /:/  /  ]],
			[[     |::/  /     \:\ \/__/     \:\/:/  /     \::::/__/    \:\__\          /:/  /   ]],
			[[     /:/  /       \:\__\        \::/  /       ~~~~         \/__/         /:/  /    ]],
			[[     \/__/         \/__/         \/__/                                   \/__/     ]],
			[[                                                                                   ]],
		}
		dashboard.section.buttons.val = {
			dashboard.button("e", "  New File", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "󰈞  Find file", ":Telescope find_files<CR>"),
			dashboard.button("r", "  Restore session", ":SessionRestore<CR>"),
			dashboard.button("m", "󰱼  Word Finder", ":Telescope live_grep<CR>"),
			dashboard.button("l", "  Marks", ":Telescope marks<CR>"),
			dashboard.button("q", "󰩈  Quit Nvim", ":qa<CR>"),
		}
		local handle = io.popen("fortune")
		local fortune = handle:read("*a")
		handle:close()
		dashboard.section.footer.val = fortune

		dashboard.config.opts.noautocmd = true

		vim.cmd([[autocmd User AlphaReady echo 'ready']])
		alpha.setup(dashboard.config)
	end,
}

return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	main = "nvim-silicon",
	opts = {
		line_offset = function(args)
			return args.line1
		end,
	},
	config = function()
		local silicon = require("nvim-silicon")
		local keymap = vim.keymap

		silicon.setup({
			window_title = function()
				return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
			end,
			language = function()
				return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":e")
			end,
			output = function()
				return vim.fn.expand("$HOME")
					.. "\\Pictures\\Screenshots\\"
					.. os.date("!%Y-%m-%dT%H-%M-%SZ")
					.. "_code.png"
			end,
			to_clipboard = true,
		})

		keymap.set("v", "<S-s>", "<cmd>'<,'>Silicon<CR>", { noremap = true, silent = true, desc = "Take screenshot" })
	end,
}

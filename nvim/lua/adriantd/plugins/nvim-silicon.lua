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

		silicon.setup({
			font = "JetBrainsMono Nerd Font=34",
			window_title = function()
				return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
			end,
			output = function()
				return vim.fn.expand("$HOME")
					.. "\\Pictures\\Screenshots\\"
					.. os.date("!%Y-%m-%dT%H-%M-%SZ")
					.. "_code.png"
			end,
		})
	end,
}

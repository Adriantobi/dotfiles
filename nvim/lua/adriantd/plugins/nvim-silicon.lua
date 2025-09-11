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
			window_title = function()
				return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
			end,
			language = function()
				return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":e")
			end,
			output = function()
				local custom_path = vim.fn.expand("$HOME/Pictures/Screenshots/")
				return custom_path .. os.date("!%Y-%m-%dT%H-%M-%SZ") .. "_code.png"
			end,
			to_clipboard = true,
		})
	end,
	keys = {
		{
			"<leader>ss",
			function()
				local silicon = require("nvim-silicon")
				silicon.shoot()
			end,
			mode = "v",
			desc = "Take screenshot",
		},
		{
			"<leader>sf",
			function()
				local silicon = require("nvim-silicon")
				silicon.file()
			end,
			mode = "v",
			desc = "Save code screenshot as file",
		},
		{
			"<leader>sc",
			function()
				local silicon = require("nvim-silicon")
				silicon.clip()
			end,
			mode = "v",
			desc = "Copy code screenshot to clipboard",
		},
	},
}

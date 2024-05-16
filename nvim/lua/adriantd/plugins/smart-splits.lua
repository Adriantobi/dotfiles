return {
	-- Smart Splits
	"mrjones2014/smart-splits.nvim",
	config = function()
		local smart_splits = require("smart-splits")

		smart_splits.setup({
			ignored_filetypes = {
				"nofile",
				"quickfix",
				"prompt",
			},
			ignored_buftypes = { "NvimTree" },
			default_amount = 3,
			at_edge = "wrap",
			move_cursor_same_row = false,
			cursor_follows_swapped_bufs = false,
			resize_mode = {
				quit_key = "<ESC>",
				resize_keys = { "h", "j", "k", "l" },
				silent = false,
				hooks = {
					on_enter = nil,
					on_leave = nil,
				},
			},
			ignored_events = {
				"BufEnter",
				"WinEnter",
			},
			multiplexer_integration = nil,
			disable_multiplexer_nav_when_zoomed = true,
			kitty_password = nil,
			log_level = "info",
		})

		local keymap = vim.keymap

		keymap.set("n", "<A-h>", require("smart-splits").resize_left)
		keymap.set("n", "<A-j>", require("smart-splits").resize_down)
		keymap.set("n", "<A-k>", require("smart-splits").resize_up)
		keymap.set("n", "<A-l>", require("smart-splits").resize_right)
		-- moving between splits
		keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
		keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
		keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
		keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
		-- swapping buffers between windows
		keymap.set("n", "<leader><S-h>", require("smart-splits").swap_buf_left)
		keymap.set("n", "<leader><S-j>", require("smart-splits").swap_buf_down)
		keymap.set("n", "<leader><S-k>", require("smart-splits").swap_buf_up)
		keymap.set("n", "<leader><S-l>", require("smart-splits").swap_buf_right)
	end,
}

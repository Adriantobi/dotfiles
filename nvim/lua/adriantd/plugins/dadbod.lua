return {
	"kristijanhusak/vim-dadbod-ui",
	dependencies = {
		"tpope/vim-dadbod",
		"kristijanhusak/vim-dadbod-completion",
	},
	config = function()
		local keymap = vim.keymap

		keymap.set(
			"n",
			"<leader>dd",
			":UndotreeHide<CR>:OutlineClose<CR>:DBUIToggle<cr>",
			{ noremap = true, silent = true, desc = "Toggle dadbod" }
		)
		keymap.set(
			"n",
			"<leader>da",
			"<cmd>DBUIAddConnection<cr>",
			{ noremap = true, silent = true, desc = "Add dadbod connection" }
		)
	end,
}

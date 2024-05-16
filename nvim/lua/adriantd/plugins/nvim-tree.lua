return {
	--Neovim File Tree
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local nvimtree = require("nvim-tree")

		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			sort_by = "case_sensitive",
			view = {
				width = 30,
				side = "right",
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		})

		local keymap = vim.keymap

		keymap.set("n", "<c-n>", "<cmd>NvimTreeFindFileToggle<CR>")
		keymap.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>")
	end,
}

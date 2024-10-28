return {
	--Undo Tree
	"mbbill/undotree",
	config = function()
		local keymap = vim.keymap

		keymap.set("n", "<leader>u", ":OutlineClose<CR>:DBUIClose<CR>:UndotreeToggle<CR>", { desc = "UndotreeToggle" })
		vim.g.undotree_DiffCommand = "FC"
		vim.g.undotree_SetFocusWhenToggle = true
	end,
}

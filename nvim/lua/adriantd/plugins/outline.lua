return {
	--Code Outline
	"hedyhli/outline.nvim",
	config = function()
		local outline = require("outline")

		outline.setup({
			-- Your setup opts here (leave empty to use defaults)
			outline_window = {
				position = "left",
				width = 16,
			},
		})

		local keymap = vim.keymap
		keymap.set("n", "<leader>o", ":UndotreeHide<CR>:Outline<CR>", { desc = "Toggle Outline" })
	end,
}

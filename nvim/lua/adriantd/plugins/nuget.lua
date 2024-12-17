return {
	"d7omdev/nuget.nvim",
	config = function()
		local nuget = require("nuget")
		nuget.setup({
			keys = {
				install = { "n", "<leader>ni" },
				remove = { "n", "<leader>nr" },
			},
		})
	end,
}

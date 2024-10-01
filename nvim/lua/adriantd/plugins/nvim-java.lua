return {
	"nvim-java/nvim-java",
	lazy = true,
	ft = "java",
	config = function()
		local nvim_java = require("java")

		nvim_java.setup()
	end,
}

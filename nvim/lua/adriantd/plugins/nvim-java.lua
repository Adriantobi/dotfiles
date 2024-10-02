return {
	"nvim-java/nvim-java",
	event = { "BufEnter *.java" },
	config = function()
		local nvim_java = require("java")

		nvim_java.setup()
	end,
}

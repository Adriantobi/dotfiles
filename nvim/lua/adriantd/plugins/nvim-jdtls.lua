return {
	"mfussenegger/nvim-jdtls",
	event = "InsertEnter",
	ft = { "java" },
	config = function()
		local jdtls = require("jdtls")
		local config = {
			cmd = {
				"java",
				"jdtls",
			},
			root_dir = vim.fs.root(0, { "gradlew", ".git", "mvnw" }),
		}

		jdtls.start_or_attach(config)
	end,
}

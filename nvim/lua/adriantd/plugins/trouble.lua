return {
	-- Trouble Diagnostics
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		local trouble = require("trouble")
		local keymap = vim.keymap

		keymap.set("n", "<leader>xx", function()
			trouble.toggle()
		end, { desc = "Toggle Trouble" })
		keymap.set("n", "<leader>xw", function()
			trouble.toggle("workspace_diagnostics")
		end, { desc = "Trouble Workspace Diagnostics" })
		keymap.set("n", "<leader>xd", function()
			trouble.toggle("document_diagnostics")
		end, { desc = "Trouble Document Diagnostics" })
		keymap.set("n", "<leader>xq", function()
			trouble.toggle("quickfix")
		end, { desc = "Trouble Quickfix" })
		keymap.set("n", "<leader>xl", function()
			trouble.toggle("loclist")
		end, { desc = "Toggle Trouble Loclist" })
		keymap.set("n", "gR", function()
			trouble.toggle("lsp_references")
		end, { desc = "Trouble LSP References" })
	end,
}

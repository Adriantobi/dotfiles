return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"williamboman/mason.nvim",
		"jay-babu/mason-nvim-dap.nvim",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local mason_nvim_dap = require("mason-nvim-dap")

		mason_nvim_dap.setup({
			automatic_installation = true,
			handlers = {},
			ensure_installed = {
				"delve",
			},
		})

		local keymap = vim.keymap

		keymap.set("n", "<F5>", dap.continue, { desc = "Debug: Start/Continue" })
		keymap.set("n", "<F1>", dap.step_into, { desc = "Debug: Step Into" })
		keymap.set("n", "<F2>", dap.step_over, { desc = "Debug: Step Over" })
		keymap.set("n", "<F3>", dap.step_out, { desc = "Debug: Step Out" })
		keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "Debug: Toggle Breakpoint" })
		keymap.set("n", "<leader>B", function()
			dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
		end, { desc = "Debug: Set Breakpoint" })

		dapui.setup({
			icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
			controls = {
				icons = {
					pause = "⏸",
					play = "▶",
					step_into = "⏎",
					step_over = "⏭",
					step_out = "⏮",
					step_back = "b",
					run_last = "▶▶",
					terminate = "⏹",
					disconnect = "⏏",
				},
			},
		})

		keymap.set("n", "<F7>", dapui.toggle, { desc = "Debug: See last session result." })

		dap.listeners.after.event_initialized["dapui_config"] = dapui.open
		dap.listeners.before.event_terminated["dapui_config"] = dapui.close
		dap.listeners.before.event_exited["dapui_config"] = dapui.close
	end,
}

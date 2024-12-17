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
		local dap_config = require("dap-config")

		mason_nvim_dap.setup({
			automatic_installation = true,
			handlers = {
				function(config)
					mason_nvim_dap.default_setup(config)
				end,
			},
		})

		dap_config.setup(dap)

		local keymap = vim.keymap
		local highlight = vim.api.nvim_set_hl

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
			mappings = {}, -- Add appropriate mappings here
			element_mappings = {}, -- Add appropriate element mappings here
			expand_lines = true,
			force_buffers = true,
			layouts = {}, -- Add appropriate layouts here
			floating = {
				border = "single", -- or 'double'
				mappings = {}, -- Add appropriate mappings here
			}, -- Add appropriate floating configuration here
			render = {
				indent = 2,
			}, -- Add appropriate render configuration here
			controls = {
				enabled = true,
				element = "repl",
				icons = {
					pause = "",
					play = "",
					step_into = "",
					step_over = "󰆷",
					step_out = "",
					step_back = "",
					run_last = "",
					terminate = "",
					disconnect = "",
				},
			},
		})

		keymap.set("n", "<F7>", dapui.toggle, { desc = "Debug: See last session result." })

		-- dap.listeners.after.event_initialized["dapui_config"] = dapui.open
		-- dap.listeners.before.event_terminated["dapui_config"] = dapui.close
		-- dap.listeners.before.event_exited["dapui_config"] = dapui.close

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		highlight(0, "DapBreakpoint", { ctermbg = 0, fg = "#993939", bg = "#31353f" })
		highlight(0, "DapLogPoint", { ctermbg = 0, fg = "#61afef", bg = "#31353f" })
		highlight(0, "DapStopped", { ctermbg = 0, fg = "#98c379", bg = "#31353f" })

		vim.fn.sign_define(
			"DapBreakpoint",
			{ text = "", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
		)
		vim.fn.sign_define(
			"DapBreakpointCondition",
			{ text = "", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
		)
		vim.fn.sign_define(
			"DapBreakpointRejected",
			{ text = "", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
		)
		vim.fn.sign_define(
			"DapLogPoint",
			{ text = "", texthl = "DapLogPoint", linehl = "DapLogPoint", numhl = "DapLogPoint" }
		)
		vim.fn.sign_define(
			"DapStopped",
			{ text = "", texthl = "DapStopped", linehl = "DapStopped", numhl = "DapStopped" }
		)
		vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DapRed", linehl = "", numhl = "" })
	end,
}

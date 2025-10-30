return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
		"nvim-java/nvim-java",
	},
	config = function()
		-- import nvim-java plugin
		local nvim_java = require("java")

		-- import mason_lspconfig plugin
		local mason_lspconfig = require("mason-lspconfig")

		-- import cmp-nvim-lsp plugin
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local builtin = require("telescope.builtin")

		local keymap = vim.keymap -- for conciseness

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				-- Buffer local mappings.
				-- See `:help vim.lsp.*` for documentation on any of the below functions
				local opts = { buffer = ev.buf, silent = true }

				-- set keybinds
				opts.desc = "[G]oto [R]eferences"
				keymap.set("n", "gR", builtin.lsp_references, opts) -- show definition, references

				opts.desc = "Go to declaration"
				keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

				opts.desc = "[G]oto LSP [D]efinition"
				keymap.set("n", "gd", builtin.lsp_definitions, opts) -- show lsp definitions

				opts.desc = "[G]oto [I]mplementation"
				keymap.set("n", "gi", builtin.lsp_implementations, opts) -- show lsp implementations

				opts.desc = "Type [D]efinition"
				keymap.set("n", "gt", builtin.lsp_type_definitions, opts) -- show lsp type definitions

				opts.desc = "[D]ocument [S]ymbols"
				keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, opts) -- show document symbols

				opts.desc = "[D]ynamic [W]orkspace Symbols"
				keymap.set("n", "<leader>dw", builtin.lsp_dynamic_workspace_symbols, opts) -- show workspace symbols

				opts.desc = "See available code actions"
				keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

				opts.desc = "Smart rename"
				keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

				opts.desc = "Show buffer diagnostics"
				keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

				opts.desc = "Show line diagnostics"
				keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

				opts.desc = "Go to previous diagnostic"
				keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

				opts.desc = "Go to next diagnostic"
				keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

				opts.desc = "Show documentation for what is under cursor"
				keymap.set("n", "S", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

				opts.desc = "Restart LSP"
				keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
			end,
		})

		-- used to enable autocompletion (assign to every lsp server config)
		local capabilities = cmp_nvim_lsp.default_capabilities()
		capabilities.textDocument.foldingRange = {
			dynamicRegistration = false,
			lineFoldingOnly = true,
		}

		-- Change the Diagnostic symbols in the sign column (gutter)
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		mason_lspconfig.setup({
			-- default handler for installed servers
			handlers = {
				function(server_name)
					-- Use vim.lsp.config instead of lspconfig[server_name].setup
					vim.lsp.config(server_name, {
						capabilities = capabilities,
					})
					vim.lsp.enable({ server_name })
				end,
				["svelte"] = function()
					-- Configure svelte server
					vim.lsp.config("svelte", {
						capabilities = capabilities,
						on_attach = function(client, bufnr)
							vim.api.nvim_create_autocmd("BufWritePost", {
								pattern = { "*.js", "*.ts" },
								callback = function(ctx)
									-- Use ctx.match instead of ctx.file
									client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
								end,
							})
						end,
					})
					vim.lsp.enable({ "svelte" })
				end,
				["graphql"] = function()
					-- Configure GraphQL language server
					vim.lsp.config("graphql", {
						capabilities = capabilities,
						filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
					})
					vim.lsp.enable({ "graphql" })
				end,
				["emmet_ls"] = function()
					-- Configure Emmet language server
					vim.lsp.config("emmet_ls", {
						capabilities = capabilities,
						filetypes = {
							"html",
							"typescriptreact",
							"javascriptreact",
							"css",
							"sass",
							"scss",
							"less",
							"svelte",
						},
					})
					vim.lsp.enable({ "emmet_ls" })
				end,
				["lua_ls"] = function()
					-- Configure Lua server (with special settings)
					vim.lsp.config("lua_ls", {
						capabilities = capabilities,
						settings = {
							Lua = {
								-- make the language server recognize "vim" global
								diagnostics = {
									globals = { "vim" },
								},
								completion = {
									callSnippet = "Replace",
								},
							},
						},
					})
					vim.lsp.enable({ "lua_ls" })
				end,
				["jdtls"] = function()
					-- Call nvim_java setup (assuming it's already defined)
					nvim_java.setup()

					-- Configure jdtls server
					vim.lsp.config("jdtls", {
						capabilities = capabilities,
					})
					vim.lsp.enable({ "jdtls" })
				end,
			},
		})
	end,
}

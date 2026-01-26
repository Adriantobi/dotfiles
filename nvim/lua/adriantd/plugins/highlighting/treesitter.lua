return {
	-- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	branch = "main",
	config = function()
		require("nvim-treesitter.install").compilers = { "clang" }
		local treesitter = require("nvim-treesitter")

		local parsers = {
			"json",
			"javascript",
			"typescript",
			"tsx",
			"yaml",
			"html",
			"css",
			"prisma",
			"markdown",
			"markdown_inline",
			"svelte",
			"graphql",
			"bash",
			"lua",
			"vim",
			"dockerfile",
			"gitignore",
			"query",
			"java",
		}

		-- Install above parsers if they are missing.
		vim.defer_fn(function()
			treesitter.install(parsers)
		end, 1000)

		local treesitter_augroup = vim.api.nvim_create_augroup("enable_treesitter_features", {})

		vim.api.nvim_create_autocmd("FileType", {
			group = treesitter_augroup,
			callback = function(args)
				local buf = args.buf
				local filetype = args.match

				local lang = vim.treesitter.language.get_lang(filetype) or filetype
				if not vim.treesitter.language.add(lang) then
					return
				end

				-- syntax highlighting, provided by Neovim
				vim.treesitter.start(buf, lang)
				-- folds, provided by Neovim
				vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
				vim.wo.foldmethod = "expr"
				-- indentation, provided by nvim-treesitter
				vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}

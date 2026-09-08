return {
	-- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	lazy = false,
	build = ":TSUpdate",
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
		treesitter.install(parsers):wait(300000)

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

				vim.treesitter.start(buf, lang)

				vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
				vim.wo[0][0].foldmethod = "expr"
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}

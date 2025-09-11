return {
	-- Set lualine as statusline
	"nvim-lualine/lualine.nvim",
	-- See `:help lualine.txt`
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")
		local color = require("lackluster").color

		lualine.setup({
			options = {
				icons_enabled = false,
				theme = vim.tbl_deep_extend("force", require("lualine.themes.lackluster"), {
					normal = { c = { bg = color.black } },
					inactive = { c = { bg = color.black } },
				}),
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_b = {
					{ "branch", icons_enabled = true, icon = "" },
					{ require("macro_recording").show_macro_recording },
				},
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype", icons_enabled = true },
				},
			},
		})
	end,
}

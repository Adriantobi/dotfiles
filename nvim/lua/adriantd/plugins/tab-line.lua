-- return {
--   'crispgm/nvim-tabline',
--   dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional
--   config = function()
--     local tabline = require("tabline")
--
--     tabline.setup({
--         show_index = true,           -- show tab index
--         show_modify = true,          -- show buffer modification indicator
--         show_icon = true,            -- show file extension icon
--         fnamemodify = ':t',          -- file name modifier
--         modify_indicator = '[+]',    -- modify indicator
--         no_name = 'Scratch',         -- no name buffer name
--         brackets = { '[', ']' },     -- file name brackets surrounding
--         inactive_tab_max_length = 0  -- max length of inactive tab titles, 0 to ignore
--     })
--   end,
-- }

return {
	"nanozuki/tabby.nvim",
	event = "VimEnter", -- if you want lazy load, see below
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local tabby = require("tabby")
		local theme = {
			fill = "TabLineFill",
			head = { fg = "#f2e9de", bg = "#029332", style = "italic" },
			current_tab = "TabLineSel",
			tab = "TabLine",
			win = "TabLine",
			tail = "TabLine",
		}

		tabby.setup({
			preset = "active_tab_with_wins",
			line = function(line)
				local cwd = " " .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t") .. " "
				return {
					{
						{ cwd, hl = theme.head },
						line.sep("", theme.head, theme.fill),
					},
					line.tabs().foreach(function(tab)
						local hl = tab.is_current() and theme.current_tab or theme.tab
						return {
							line.sep("", hl, theme.fill),
							tab.is_current() and "" or "",
							tab.number(),
							line.sep("", hl, theme.fill),
							hl = hl,
							margin = " ",
						}
					end),
					line.spacer(),
					line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
						local hl = win.is_current() and theme.current_tab or theme.tab
						return {
							line.sep("", hl, theme.fill),
							win.is_current() and "" or "",
							win.buf_name(),
							line.sep("", hl, theme.fill),
							hl = hl,
							margin = " ",
						}
					end),
					{
						line.sep("", theme.tail, theme.fill),
					},
					hl = theme.fill,
				}
			end,
			-- option = {}, -- setup modules' option,
		})
	end,
}

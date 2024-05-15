return {
  'crispgm/nvim-tabline',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional
  config = function()
    local tabline = require("tabline")

    tabline.setup({
        show_index = true,           -- show tab index
        show_modify = true,          -- show buffer modification indicator
        show_icon = true,            -- show file extension icon
        fnamemodify = ':t',          -- file name modifier
        modify_indicator = '[+]',    -- modify indicator
        no_name = 'Scratch',         -- no name buffer name
        brackets = { '[', ']' },     -- file name brackets surrounding
        inactive_tab_max_length = 0  -- max length of inactive tab titles, 0 to ignore
    })
  end,
}

return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    lualine.setup({
      options = {
        icons_enabled = false,
        theme = 'catppuccin',
        component_separators = '|',
        section_separators = '',
      },
      sections = {
        lualine_b = {require('macro_recording').show_macro_recording},
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = {fg = "#ff9e64"},
          },
          {"encoding"},
          {"fileformat"},
          {"filetype"},
        },
      },
    })
  end
}

return {
    -- Hybrid Theme
    'vimoxide/vim-cinnabar',  -- Other themes: '', 'alexanderbluhm/black.nvim', 'catppuccin/nvim', 'AlexvZyl/nordic.nvim', 'felipeagc/fleet-theme-nvim'
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'cinnabar'
    end,
}

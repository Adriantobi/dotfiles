vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.mouse = ""
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.scrolloff = 4
opt.expandtab = true
opt.fillchars = { eob = ' ' }

opt.swapfile = false
opt.incsearch = true
opt.wrap = false
opt.smartindent = true
opt.cmdheight = 0
opt.wildoptions = 'pum'
opt.autoindent = true
opt.termguicolors = true
opt.laststatus = 3
opt.undofile = true

opt.ignorecase = true
opt.smartcase = true

opt.background = "dark"

opt.clipboard:append("unnamedplus")

-- Set completeopt to have a better completion experience
opt.completeopt = 'menuone,noselect'
opt.signcolumn = 'yes'

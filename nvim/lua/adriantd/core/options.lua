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
opt.fillchars = { eob = " " }

opt.swapfile = false
opt.incsearch = true
opt.wrap = false
opt.smartindent = true
opt.cmdheight = 0
opt.wildoptions = "pum"
opt.autoindent = true
opt.termguicolors = true
opt.laststatus = 3
opt.undofile = true
opt.updatetime = 50

opt.ignorecase = true
opt.smartcase = true

opt.background = "dark"

opt.clipboard:append("unnamedplus")

opt.mousescroll = "ver:0,hor:0"

-- Set completeopt to have a better completion experience
opt.completeopt = "menuone,noselect"
opt.signcolumn = "yes"

-- [[Terminal Options]]
local set = vim.opt_local

-- Setting local options for terminal buffers
vim.api.nvim_create_autocmd("TermOpen", {
	group = vim.api.nvim_create_augroup("custom_term_open", {}),
	callback = function()
		set.number = false
		set.relativenumber = false
		set.scrolloff = 0
	end,
})

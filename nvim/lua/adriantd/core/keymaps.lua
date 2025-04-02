vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap
local terminals = require("terminals")

keymap.set("n", "J", ":m .+1<CR>==")
keymap.set("n", "K", ":m .-2<CR>==")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("x", "<leader>p", '"_dP')
keymap.set("t", "<Esc>", "<C-\\><C-n>")

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close all current splits" })
keymap.set("n", "<leader>so", "<C-w>T", { desc = "Open current split in new tab" })

-- [[Window Management]]
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Move tabs left and right
keymap.set({ "n", "v" }, "<leader>h", ":-tabmove<CR>", { noremap = true, silent = true, desc = "Move tab left" })
keymap.set({ "n", "v" }, "<leader>l", ":+tabmove<CR>", { noremap = true, silent = true, desc = "Move tab right" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic Keymaps
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
keymap.set("n", "<leader>df", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Indentation Keymaps
keymap.set("v", "<", "<gv", { desc = "Indent line left" })
keymap.set("v", ">", ">gv", { desc = "Indent line left" })

-- Terminal Keymaps
keymap.set("n", "<leader>tj", function()
	terminals.toggle_terminal("below")
end, { desc = "Toggle terminal below" })

keymap.set("n", "<leader>tk", function()
	terminals.toggle_terminal("above")
end, { desc = "Toggle terminal above" })

-- Disable arrow keys
keymap.set("", "<up>", "<nop>", { noremap = true })
keymap.set("", "<down>", "<nop>", { noremap = true })
keymap.set("i", "<up>", "<nop>", { noremap = true })
keymap.set("i", "<down>", "<nop>", { noremap = true })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
vim.keymap.set("v", "<C-k>", ":move '<-2<CR>gv=gv", {}) -- Move selecion up/down
vim.keymap.set("v", "<C-j>", ":move '>+1<CR>gv=gv", {})

-- LSP --
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>fc", function()
	require("conform").format({ lsp_fallback = true })
end, { desc = "Format File" })

-- Window --
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- Split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horinzontally" }) -- Split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "make split windows equal size" }) -- Make split windows equal width
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) --

-- Diagnostics --
vim.keymap.set('n', '<Leader>d', vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Show diagnostics" })

-- snacks --
local Snacks = require("snacks")

vim.keymap.set("n", "<leader>sf", function()
	Snacks.scratch()
end, { desc = "Toggle Scratch Buffer" })
vim.keymap.set("n", "<leader>S", function()
	Snacks.scratch.select()
end, { desc = "Select Scratch Buffer" })
vim.keymap.set("n", "<leader>gl", function()
	Snacks.lazygit.log_file()
end, { desc = "Lazygit Log (cwd)" })
vim.keymap.set("n", "<leader>lg", function()
	Snacks.lazygit()
end, { desc = "Lazygit" })
vim.keymap.set("n", "<C-p>", function()
	Snacks.picker.pick("files")
end, { desc = "Find Files" })
vim.keymap.set("n", "<leader><leader>", function()
	Snacks.picker.recent()
end, { desc = "Recent Files" })
vim.keymap.set("n", "<leader>fb", function()
	Snacks.picker.buffers()
end, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fg", function()
	Snacks.picker.grep()
end, { desc = "Grep Files" })
vim.keymap.set("n", "<C-n>", function()
	Snacks.explorer()
end, { desc = "Explorer" })

vim.keymap.set("n", "<leader>fc", function()
	require("conform").format({ lsp_fallback = true })
end, { desc = "Format File" })

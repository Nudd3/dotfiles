vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })      -- Split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horinzontally" })   -- Split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "make split windows equal size" }) -- Make split windows equal width
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })  -- Close current split

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

vim.keymap.set('n', '<leader>j', ':m .+1<CR>==', { noremap = true })
vim.keymap.set('n', '<leader>k', ':m .-2<CR>==', { noremap = true })
vim.keymap.set('v', '<leader>j', ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set('v', '<leader>k', ":m '<-2<CR>gv=gv", { noremap = true })

vim.keymap.set('n', '<Leader>d', vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Show diagnostics" })

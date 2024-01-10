-- Delete lazyvim keymaps
vim.keymap.del({ "n", "i", "v" }, "<c-s>")
vim.keymap.del({ "n", "i", "v" }, "<A-j>")
vim.keymap.del({ "n", "i", "v" }, "<A-k>")

-- Add custom keymaps
local opts = { noremap = true, silent = true }
local nopts = { noremap = true, silent = false }
local map = vim.api.nvim_set_keymap
local jump_opt = { noremap = false, silent = true }

-- Select all
map("n", "<leader>A", "GVgg", opts)

-- Buffer and tab navigation
map("n", "<C-w>", ":q<CR>", opts)
map("n", "<C-x>", ":bd!<CR>", opts)
map("n", "<C-s>", "<C-^>", opts)

-- Buffer and tab navigation
map("n", "<leader>oa", ":%bd! | e# |bd#<CR>", opts)

-- Copilot
map("n", "<leader>ce", ":Copilot enable<CR>", opts)
map("n", "<leader>cd", ":Copilot disable<CR>", opts)

-- Backspace
map("i", "<M-BS>", "<C-W>", opts)

-- Move
map("n", "<M-Down>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<M-Up>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<M-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<M-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<M-Down>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<M-Up>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

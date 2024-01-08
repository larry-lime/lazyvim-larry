-- Delete lazyvim keymaps
vim.keymap.del({ "n", "i", "v" }, "<c-s>")

-- Add custom keymaps
local opts = { noremap = true, silent = true }
local nopts = { noremap = true, silent = false }
local keymap = vim.api.nvim_set_keymap
local jump_opt = { noremap = false, silent = true }

-- Select all
keymap("n", "<leader>A", "GVgg", opts)
keymap("n", "<leader>oa", ":%bd! | e# |bd#<CR>", opts)

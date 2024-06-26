-- Delete lazyvim keymaps
vim.keymap.del("n", "<S-l>")
vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<leader><Tab><Tab>")
vim.keymap.del("n", "<leader><tab>l")
vim.keymap.del("n", "<leader><tab>f")
vim.keymap.del("n", "<leader><tab>]")
vim.keymap.del("n", "<leader><tab>d")
vim.keymap.del("n", "<leader><tab>[")
vim.keymap.del("n", "<leader>w-")
vim.keymap.del("n", "<leader>w|")
vim.keymap.del("n", "<leader>ww")
vim.keymap.del("n", "<leader>wd")
vim.keymap.del({ "n", "i", "v" }, "<A-j>")
vim.keymap.del({ "n", "i", "v" }, "<A-k>")
-- Add custom keymaps
local opts = { noremap = true, silent = true }
local nopts = { noremap = true, silent = false }
local map = vim.api.nvim_set_keymap
local setmap = vim.keymap.set
local jump_opt = { noremap = false, silent = true }

-- Select all
map("n", "<leader>A", "GVgg", opts)

map("n", "<leader>br", ":BufferLineTabRename ", opts)

map("n", "<leader>t", ":tabnew<CR>", opts)
-- map("n", "<leader>w", ":bdelete | tabclose<CR>", opts)
map("n", "<leader>w", ":tabclose<CR>", opts)
map("n", "<leader><Tab>", "g<Tab>", opts)

-- Buffer and tab navigation
-- map("n", "<C-t>", "<CMD>tabnew<CR>", opts)
-- map("n", "<C-w>", "<CMD>tabclose<CR>", opts)
map("n", "<C-x>", ":bd!<CR>", opts)
map("n", "<leader>xx", ":q<CR>", opts)
-- TODO: Disable todo comments
map("n", "[t", ":tabprevious<CR>", opts)
map("n", "]t", ":tabnext<CR>", opts)
-- map("n", "<leader>R", ":e %<CR>", opts)

-- NOTE: Ideally, put this in the bufferline config
map("n", "<C-p>", "<cmd>BufferLineCyclePrev<cr>", opts)
map("n", "<C-n>", "<cmd>BufferLineCycleNext<cr>", opts)

map("n", "<leader>rn", "*Ncgn", opts)
map("n", "<leader>rm", 'yiw:%s/<C-r>"/', nopts)

-- Copy paste
map("v", "<C-c>", '"+y', opts)
map("n", "<C-c>", '"+y', opts)

-- Buffer and tab navigation
map("n", "<leader>oa", ":%bd! | e# |bd#<CR>", opts)
-- map("n", "<leader><Tab>", "<C-6>", opts)

-- Copilot
map("n", "<leader>ce", ":Copilot enable<CR>", opts)
-- map("n", "<leader>cd", ":Copilot disable<CR>", opts)

-- Backspace
map("i", "<M-BS>", "<C-W>", opts)

-- Move
map("n", "<M-Down>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<M-Up>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<M-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<M-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<M-Down>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<M-Up>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Surround
map("n", [[<leader>"]], [[ciw"<C-R>""<Esc>]], opts)
map("n", [[<leader>(]], [[ciw(<C-R>")<Esc>F(]], opts)
map("n", [[<leader>[]], [[ciw[<C-R>"]<Esc>F[]], opts)
map("n", [[<leader>{]], [[ciw{<C-R>"}<Esc>]], opts)
-- map("n", [[<leader>`]], [[ciw`<C-R>"`<Esc>]], opts)
-- map("n", [[<leader>']], [[ciw'<C-R>"'<Esc>]], opts)

map("v", [[<leader>"]], [[c"<C-R>""<Esc>]], opts)
map("v", [[<leader>(]], [[c(<C-R>")<Esc>F(]], opts)
map("v", [[<leader>[]], [[c[<C-R>"]<Esc>F[]], opts)
map("v", [[<leader>{]], [[c{<C-R>"}<Esc>]], opts)
map("v", [[<leader>`]], [[c`<C-R>"`<Esc>]], opts)
-- map("v", [[<leader>']], [[c'<C-R>"'<Esc>]], opts)

-- Repeat movement with ; and ,
-- ensure ; goes forward and , goes backward regardless of the last direction
-- vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f)
-- vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F)
-- vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t)
-- vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T)

-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- Disable autoformat for lua files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "*astro", "*fish" },
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "vimwiki" },
  command = "set filetype=markdown",
})

-- vim.api.nvim_create_autocmd({ "FileType" }, {
--   pattern = { "*mly" },
--   command = "TSDisable highlight | LspStop",
-- })

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.mly",
  callback = function()
    vim.cmd("TSDisable highlight")
  end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.tex" },
  command = "TexlabBuild",
})

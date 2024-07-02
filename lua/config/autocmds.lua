-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- Disable autoformat for lua files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "*" },
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.lalrpop" },
  command = "set filetype=lalrpop | TSBufEnable highlight",
})

-- TODO: Move to LSP when I have the time
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "move" },
  callback = function()
    vim.lsp.start({
      name = "move-analyzer",
      cmd = { "move-analyzer" },
      root_dir = vim.fs.root(0, { "Move.toml" }),
    })
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

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.tex" },
  command = "TexlabBuild",
})

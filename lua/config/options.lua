-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Remove from system clipboard
local options = {
  clipboard = "unnamedplus", -- unnamedplus
  termguicolors = true,
  laststatus = 0,
  lazyredraw = false,
  showtabline = 0,
  background = "dark",
  -- winbar = "%m %t [%{tabpagenr()}]",
}

-- Hide statusline
-- vim.api.nvim_set_hl(0, "Statusline", { link = "Normal" })
-- vim.api.nvim_set_hl(0, "StatuslineNC", { link = "Normal" })
-- local str = string.rep("-", vim.api.nvim_win_get_width(0))
-- vim.opt.statusline = "%=" .. str .. "%="

-- Set Custom Treesitter Parser

-- vim.opt.shortmess:append("c")

for k, v in pairs(options) do
  vim.opt[k] = v
end

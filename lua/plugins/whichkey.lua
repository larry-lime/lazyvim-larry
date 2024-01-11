return {
  "folke/which-key.nvim",
  lazy = true,
  enabled = false,
  event = function()
    return "LazyFile"
  end,
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 1000
  end,
}

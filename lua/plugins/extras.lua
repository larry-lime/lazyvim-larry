return {
  { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
  {
    "echasnovski/mini.ai",
    event = function()
      return "BufReadPre"
    end,
    enabled = false,
  },
  {
    "tiagovla/scope.nvim",
    lazy = true,
    event = "LazyFile",
    enabled = true,
    opts = {},
  },
  { "L3MON4D3/LuaSnip", enabled = true },
  {
    "folke/trouble.nvim",
    event = "BufRead",
  },
}

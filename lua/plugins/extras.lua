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
    "xemptuous/sqlua.nvim",
    lazy = true,
    cmd = "SQLua",
    config = function()
      require("sqlua").setup()
    end,
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
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    lazy = false,
    config = function()
      require("refactoring").setup()
    end,
  },
}

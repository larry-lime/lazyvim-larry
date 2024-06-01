return {
  { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
  { "echasnovski/mini.ai", lazy = true, event = "BufEnter *.md", enabled = true },
  {
    "tiagovla/scope.nvim",
    event = function()
      return "LazyFile"
    end,
    enabled = true,
    opts = {},
  },
  -- {
  --   "numToStr/Comment.nvim",
  --   lazy = false,
  --   config = function()
  --     require("Comment").setup()
  --   end,
  -- },
}

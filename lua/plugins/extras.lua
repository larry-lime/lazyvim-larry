return {
  { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
  { "echasnovski/mini.ai", lazy = true, event = "BufEnter *.md", enabled = true },
  {
    "numToStr/Comment.nvim",
    lazy = false,
    config = function()
      require("Comment").setup()
    end,
  },
}

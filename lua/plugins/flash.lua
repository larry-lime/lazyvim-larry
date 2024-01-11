return {
  "folke/flash.nvim",
  event = function()
    return "BufReadPost"
  end,
  keys = {
    { "s", mode = { "n", "x", "o" }, false },
  },
}

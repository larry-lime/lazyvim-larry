return {
  "folke/flash.nvim",
  event = function()
    return "BufReadPost"
  end,
  keys = {
    { "s", mode = { "n", "x", "o" }, false },
  },
  opts = {
    modes = {
      char = {
        keys = { "f", "F", "t", "T", [";"] = "n", [","] = "N" },
        highlight = { backdrop = false },
      },
    },
  },
}

return {
  "folke/flash.nvim",
  event = function()
    return "BufReadPost"
  end,
  keys = {
    { "s", mode = { "n", "x", "o" }, false },
  },
  opts = {
    mode = "fuzzy", -- fuzzy: fuzzy search, search: regular search
    incremental = true,
    modes = {
      char = {
        enabled = true,
        keys = { "f", "F" },
        highlight = { backdrop = false },
        jump_labels = true,
        label = { exclude = "hjkliardc" },
      },
    },
  },
}

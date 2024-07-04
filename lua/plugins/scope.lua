return {
  "tiagovla/scope.nvim",
  enabled = false,
  event = function()
    return "BufReadPre"
  end,
  config = function()
    require("scope").setup({})
  end,
}

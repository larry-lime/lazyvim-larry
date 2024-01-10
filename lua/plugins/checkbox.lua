return {
  "opdavies/toggle-checkbox.nvim",
  lazy = true,
  keys = {
    {
      "<leader>cb",
      function()
        require("toggle-checkbox").toggle()
      end,
      desc = "Toggle checkbox",
    },
  },
}

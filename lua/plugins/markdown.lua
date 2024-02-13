return {
  {
    "jakewvincent/mkdnflow.nvim",
    config = function()
      require("mkdnflow").setup({
        -- Config goes here; leave blank for defaults
      })
    end,
    lazy = false,
    event = "BufEnter *.md",
    enabled = true,
  },
  {
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
  },
}

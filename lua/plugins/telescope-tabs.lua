return {
  "LukasPietzschmann/telescope-tabs",
  enabled = false,
  keys = {
    { "<leader>.", "<cmd> Telescope telescope-tabs list_tabs<cr>", desc = "Telescope Tabs" },
  },
  config = function()
    require("telescope").load_extension("telescope-tabs")
    require("telescope-tabs").setup({
      -- Your custom config :^)
    })
  end,
  dependencies = { "nvim-telescope/telescope.nvim" },
}

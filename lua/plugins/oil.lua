return {
  "stevearc/oil.nvim",
  lazy = true,
  opts = {
    keymaps = {
      ["q"] = function()
        require("oil").save()
        require("oil").discard_all_changes()
        require("oil").close()
      end,
      -- ["o"] = "actions.select",
    },
    view_options = {
      -- Show files and directories that start with "."
      show_hidden = true,
    },
    float = {
      -- Padding around the floating window
      padding = 2,
      -- Reduce the maximum width of the floating window
      max_width = 100,
      max_height = 100,
      border = "rounded",
      win_options = {
        winblend = 0,
      },
    },
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {
      "-",
      function()
        require("oil").toggle_float()
      end,
      desc = "Open parent directory",
    },
  },
}

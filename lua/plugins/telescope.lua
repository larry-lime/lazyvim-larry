return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = require("telescope.actions").move_selection_next,
          ["<C-k>"] = require("telescope.actions").move_selection_previous,
          ["<C-n>"] = require("telescope.actions").preview_scrolling_down,
          ["<C-p>"] = require("telescope.actions").preview_scrolling_up,
          ["<C-d>"] = require("telescope.actions").delete_buffer,
        },
        n = {
          ["<C-n>"] = require("telescope.actions").preview_scrolling_down,
          ["<C-p>"] = require("telescope.actions").preview_scrolling_up,
        },
      },
    },
  },
}

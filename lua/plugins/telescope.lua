return {
  "nvim-telescope/telescope.nvim",
  enabled = true,
  keys = {
    { "<leader>K", "<CMD>Telescope<CR>", desc = "Telescope" },
    { "<leader>/", "<CMD>Telescope live_grep<CR>", desc = "Telescope Grep" },
    { "<leader>k", "<CMD>Telescope find_files<CR>", desc = "Telescope Gitfiles" },
    { "<leader>ff", "<CMD>Telescope git_files<CR>", desc = "Telescope Gitfiles" },
  },
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
      pickers = {
        spell_suggest = {
          layout_strategy = "cursor",
          layout_config = {
            width = 0.2,
            height = 0.3,
          },
        },
        find_files = {
          hidden = true,
          no_ignore = false,
        },
      },
    },
  },
}

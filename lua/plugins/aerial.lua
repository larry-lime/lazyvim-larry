return {
  "stevearc/aerial.nvim",
  lazy = true,
  opts = {
    nav = {
      border = "rounded",
      max_height = 0.9,
      min_height = { 10, 0.1 },
      max_width = 0.5,
      min_width = { 0.2, 20 },
      win_opts = {
        cursorline = true,
        winblend = 10,
      },
      -- Jump to symbol in source window when the cursor moves
      autojump = true,
      -- Show a preview of the code in the right column, when there are no child symbols
      preview = false,
      -- Keymaps in the nav window
      keymaps = {
        ["<CR>"] = "actions.jump",
        ["q"] = "actions.close",
        ["<2-LeftMouse>"] = "actions.jump",
        ["<C-v>"] = "actions.jump_vsplit",
        ["<C-s>"] = "actions.jump_split",
        ["h"] = "actions.left",
        ["l"] = "actions.right",
        ["<C-c>"] = "actions.close",
      },
    },
  },
  keys = {
    { "<leader>tb", "<cmd>AerialToggle<cr>", desc = "Aerial (Symbols)" },
    { "<leader>nv", "<cmd>:AerialNavToggle<cr>", desc = "Aerial (Nav)" },
  },
}

return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    opts = {
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
    },
  },
  { "ellisonleao/gruvbox.nvim", lazy = false },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "storm", -- storm, moon, night, day
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin", -- tokyonight, gruvbox, catppuccin
    },
  },
}

return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    opts = {
      -- latte, frappe, macchiato, mocha
      flavour = "latte",
    },
  },
  { "ellisonleao/gruvbox.nvim", lazy = false, enabled = false },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    enabled = false,
    priority = 1000,
    opts = {
      style = "storm", -- storm, moon, night, day
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    enabled = false,
    opts = {
      variant = "moon", -- auto, main, moon, or dawn
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin", -- tokyonight, gruvbox, catppuccin, rose-pine
    },
  },
}

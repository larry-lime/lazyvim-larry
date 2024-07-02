return {
  {
    "catppuccin/nvim",
    event = "VeryLazy",
    name = "catppuccin",
    opts = {
      -- latte, frappe, macchiato, mocha
      flavour = "latte",
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = {}, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = { "italic" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
    },
  },
  { "ellisonleao/gruvbox.nvim", event = "VeryLazy", enabled = true },
  {
    "folke/tokyonight.nvim",
    event = "VeryLazy",
    enabled = true,
    opts = {
      style = "moon", -- storm, moon, night, day
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    event = "VeryLazy",
    enabled = true,
    opts = {
      variant = "auto", -- auto, main, moon, or dawn
      dark_variant = "moon", -- main, moon, or dawn
      highlight_groups = {
        ["@comment"] = { italic = false },
        ["@variable"] = { italic = false },
        ["@function"] = { italic = false },
        ["@conditional"] = { italic = true },
        ["@keyword"] = { italic = true },
        ["@class"] = { italic = false },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight", -- tokyonight, gruvbox, catppuccin, rose-pine
    },
  },
}

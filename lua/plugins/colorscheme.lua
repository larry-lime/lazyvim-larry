return {
  {
    "catppuccin/nvim",
    event = "VeryLazy",
    enabled = true,
    name = "catppuccin",
    opts = {
      -- latte, frappe, macchiato, mocha
      -- flavour = "latte",
      background = { -- :h background
        light = "latte",
        dark = "macchiato",
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
      style = "moon", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
      terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
      cache = false, -- When set to true, the theme will be cached for better performance
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
      },
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
      colorscheme = "tokyonight", -- tokyonight, gruvbox, catppuccin, rose-pine, catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mochaa
    },
  },
}

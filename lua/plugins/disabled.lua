-- TODO: Fix nvim surround
return {
  -- Enabled plugins
  { "MaximilianLloyd/ascii.nvim" },
  { "lervag/vimtex", lazy = true, event = "BufEnter *.tex" },
  { "LhKipp/nvim-nu", lazy = true, event = "BufEnter *.nu" },
  { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },

  -- Disabled LazyVim plugins
  { "folke/noice.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "RRethy/vim-illuminate", enabled = false },
  { "folke/trouble.nvim", enabled = false },
  { "nvim-ts-autotag", enabled = false },
  { "hrsh7th/cmp-emoji", enabled = false },

  -- NOTE: Mini sucks ass
  { "echasnovski/mini.surround", enabled = false },
  { "echasnovski/mini.pairs", enabled = false },
  { "echasnovski/mini.ai", enabled = false },
  { "echasnovski/mini.indentscope", enabled = false },
}

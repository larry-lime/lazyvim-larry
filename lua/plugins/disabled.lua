-- TODO: Fix nvim surround
return {
  -- disable trouble
  { "folke/noice.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "folke/which-key.nvim", enabled = false },
  { "folke/flash.nvim", enabled = true },
  { "RRethy/vim-illuminate", enabled = false },
  { "echasnovski/mini.indentscope", enabled = false },
  { "folke/trouble.nvim", enabled = false },
  { "nvim-ts-autotag", enabled = false },
  { "hrsh7th/cmp-emoji", enabled = false },
  { "pocco81/auto-save.nvim" },

  -- NOTE: Mini sucks ass
  { "echasnovski/mini.surround", enabled = false },
  { "echasnovski/mini.ai", enabled = false },
  { "echasnovski/mini.pairs", enabled = false },
}

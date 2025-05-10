return {
  { "rcarriga/nvim-notify", enabled = true },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "RRethy/vim-illuminate", enabled = false },
  { "folke/trouble.nvim", enabled = false },
  { "nvim-ts-autotag", enabled = false },
  { "lervag/vimtex", enabled = false },
  { "echasnovski/mini.pairs", enabled = false },
  { "echasnovski/mini.comment", enabled = false },
  { "ahmedkhalf/project.nvim", enabled = false },
  { "SmiteshP/nvim-navic", enabled = false },
  { "echasnovski/mini.indentscope", enabled = true },
  { "CopilotC-Nvim/CopilotChat.nvim", enabled = false },
  { "zbirenbaum/copilot.lua", opts = { suggestion = { enabled = false } } },
  {
    "folke/snacks.nvim",
    keys = {
      { "<leader>n", false },
    },
    enabled = true,
    opts = {
      scroll = { enabled = false },
    },
  },
}

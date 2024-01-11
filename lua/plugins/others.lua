-- TODO: Figure out a way to load dap for specific filetypes
return {
  { "MaximilianLloyd/ascii.nvim", lazy = true },
  { "lervag/vimtex", lazy = true, opts = {}, ft = "tex" },
  { "LhKipp/nvim-nu", lazy = true, opts = {}, ft = "nu" },
  { "windwp/nvim-autopairs", event = "LazyFile", opts = {} },
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },
}

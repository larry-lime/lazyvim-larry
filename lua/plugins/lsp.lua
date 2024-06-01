return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
        float = {
          focusable = false,
          style = "minimal",
          border = "rounded",
          source = "always",
          header = "",
          prefix = "",
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = { ui = { border = "rounded" } },
  },
}

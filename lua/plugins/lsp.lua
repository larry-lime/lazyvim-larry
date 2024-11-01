return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {},
      diagnostics = {
        virtual_text = false,
        float = {
          focusable = true,
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
    opts = {
      ensure_installed = {},
      ui = { border = "rounded" },
    },
  },
}

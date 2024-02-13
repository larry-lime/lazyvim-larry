return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "gl", "<cmd>lua vim.diagnostic.open_float()<CR>" }
    end,
  },
  {
    "neovim/nvim-lspconfig",

    opts = function(_, opts)
      opts.diagnostics.virtual_text = false
      opts.diagnostics.float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
      }
      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
      vim.lsp.handlers["textDocument/signatureHelp"] =
        vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = { ui = { border = "rounded" } },
  },
}

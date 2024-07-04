return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  enabled = false,
  opts = {
    options = {
      icons_enabled = true,
      theme = "auto",
      -- section_separators = { left = "", right = "" }, -- , , , , , , , 
      section_separators = { left = "", right = "" }, -- , , , , , , , ,
      component_separators = { left = ">", right = "" },
      disabled_filetypes = {},
      always_divide_middle = true,
      globalstatus = true,
    },
  },
}

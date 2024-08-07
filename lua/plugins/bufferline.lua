return {
  "akinsho/bufferline.nvim",
  keys = {
    { "<M-[>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "<M-]>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
  },
  opts = {
    options = {
      mode = "buffers", -- set to "tabs" to only show tabpages instead
      numbers = "ordinal", --[[ | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string, ]]
      always_show_bufferline = true,
      modified_icon = "●",
      indicator = {
        icon = "▎", -- this should be omitted if indicator style is not 'icon'
        style = "icon",
      },
      truncate_names = false, -- whether or not tab names should be truncated
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "center",
          separator = true,
        },
      },
      separator_style = "thin" --[[ "slant "| "slope" | "thick" | "thin" | { 'any', 'any' } ]],
      groups = {
        options = {
          toggle_hidden_on_enter = true, -- when you re-enter a hidden group this options re-opens that group so the buffer is visible
        },
        items = {},
      },
    },
  },
}

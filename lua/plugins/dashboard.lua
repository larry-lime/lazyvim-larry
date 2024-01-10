return {
  "nvimdev/dashboard-nvim",
  opts = function(_, opts)
    local logo = require("ascii").get_random("text", "neovim")
    local logo_str = table.concat(logo, "\n")

    logo_str = string.rep("\n", 8) .. logo_str .. "\n\n"
    opts.config.header = vim.split(logo_str, "\n")
    opts.config.center = {
      {
        action = "Telescope find_files",
        desc = " Find file                               ",
        icon = " ",
        key = "f",
      },
      {
        action = "ene | startinsert",
        desc = " New file",
        icon = " ",
        key = "n",
      },
      {
        action = [[lua require("oil").toggle_float()]],
        desc = "Open Oil.nvim",
        icon = " ",
        key = "o",
      },
      {
        action = "Telescope live_grep",
        desc = " Find text",
        icon = " ",
        key = "/",
      },
      {
        action = [[lua require("lazyvim.util").telescope.config_files()()]],
        desc = " Config",
        icon = " ",
        key = "c",
      },
      {
        action = 'lua require("persistence").load()',
        desc = " Restore Session",
        icon = " ",
        key = "s",
      },
      {
        action = "LazyExtras",
        desc = " Lazy Extras",
        icon = " ",
        key = "x",
      },
      {
        action = "Lazy",
        desc = " Lazy",
        icon = "󰒲 ",
        key = "l",
      },
      {
        action = "qa",
        desc = " Quit",
        icon = " ",
        key = "q",
      },
    }
  end,
}

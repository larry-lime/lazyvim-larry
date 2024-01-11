local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")
return {
  "nvim-treesitter/nvim-treesitter",
  keys = {
    {
      ",",
      function()
        ts_repeat_move.repeat_last_move_next()
      end,
      mode = { "n", "x", "o" },
    },
    {
      ";",
      function()
        ts_repeat_move.repeat_last_move_next()
      end,
      mode = { "n", "x", "o" },
    },
  },
  opts = {
    textobjects = {
      select = {
        enable = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@conditional.inner",
          ["ic"] = "@conditional.outer",
          ["aa"] = "@parameter.outer",
          ["ia"] = "@parameter.inner",
          ["il"] = "@loop.inner",
          ["al"] = "@loop.outer",
          ["a/"] = "@comment.outer",
          ["iv"] = "@assignment.inner",
          ["av"] = "@assignment.outer",
        },
      },
      move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          ["]m"] = "@function.outer",
          ["]]"] = "@class.outer",
          ["]c"] = "@conditional.outer",
          ["]v"] = "@assignment.outer",
          ["]a"] = "@parameter.inner",
          ["]A"] = "@parameter.outer",
          ["]f"] = "@call.outer",
          ["]r"] = "@return.outer",
          ["]l"] = "@loop.outer",
        },
        goto_previous_start = {
          ["[m"] = "@function.outer",
          ["[["] = "@class.outer",
          ["[c"] = "@conditional.outer",
          ["[v"] = "@assignment.outer",
          ["[a"] = "@parameter.inner",
          ["[A"] = "@parameter.outer",
          ["[f"] = "@call.outer",
          ["[r"] = "@return.outer",
          ["[l"] = "@loop.outer",
        },
        goto_next_end = {
          ["]M"] = "@function.outer",
          ["]["] = "@class.outer",
        },
        goto_previous_end = {
          ["[M"] = "@function.outer",
          ["[]"] = "@class.outer",
        },
      },
      -- goto_next = {
      --   [']i'] = "@conditional.inner",
      -- },
      -- goto_previous = {
      --   ['[i'] = "@conditional.inner",
      -- }
    },
    swap = {
      enable = true,
      swap_next = {
        ["<leader>a"] = "@parameter.inner",
      },
      swap_previous = {
        ["<leader>A"] = "@parameter.inner",
      },
    },
  },
}

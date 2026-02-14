return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    require("mini.icons").setup()
    require("mini.statusline").setup()
    require("mini.git").setup()
    require("mini.diff").setup()
    require("mini.clue").setup({
      triggers = {
        -- Leader triggers
        { mode = "n", keys = "<Leader>" },
        { mode = "x", keys = "<Leader>" },

        -- Built-in completion
        { mode = "i", keys = "<C-x>" },

        -- `g` key
        { mode = "n", keys = "g" },
        { mode = "x", keys = "g" },

        -- Marks
        { mode = "n", keys = "'" },
        { mode = "n", keys = "`" },
        { mode = "x", keys = "'" },
        { mode = "x", keys = "`" },

        -- Registers
        { mode = "n", keys = '"' },
        { mode = "x", keys = '"' },
        { mode = "i", keys = "<C-r>" },
        { mode = "c", keys = "<C-r>" },

        -- Window commands
        { mode = "n", keys = "<C-w>" },

        -- `z` key
        { mode = "n", keys = "z" },
        { mode = "x", keys = "z" },
      },
    })

    require("mini.completion").setup()
    require("mini.snippets").setup()

    require("mini.files").setup()
    require("mini.comment").setup()
  end,
}

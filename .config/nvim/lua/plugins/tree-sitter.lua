return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        highlight = { enable = true },
        indent = { enable = true },
        autotag = { enable = true },
        ensure_installed = {
          "c",
          "lua",
          "go",
          "zig",
          "typst"
        },
        sync_install = false,
        incremental_selection = {
          enable = true,
        },
      })
    end
  }
}

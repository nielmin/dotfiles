return {
  -- catppuccin
  -- {
  --     "catppuccin/nvim",
  --     name = "catppuccin",
  --     priority = 1000,
  -- config = function()
  -- 	vim.cmd.colorscheme('catppuccin')
  --     end,
  -- },
  -- {
  --     "rose-pine/neovim",
  --     name = "rose-pine",
  -- config = function()
  --     vim.cmd.colorscheme('rose-pine-moon')
  --         end,
  -- },
  -- {
  --     "folke/tokyonight.nvim",
  --     lazy = false,
  --     priority = 1000,
  --     name = "tokyonight",
  -- config = function()
  --     vim.cmd.colorscheme('tokyonight')
  --         end,
  -- },
  {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme('kanso-zen')
    end,
  },
}

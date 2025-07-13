return {
  "mellow-theme/mellow.nvim",
  -- Add in any other configuration; 
  --   event = foo, 
  --   config = bar
  --   end,
  config = function()
    vim.cmd.colorscheme('mellow')
  end,
}

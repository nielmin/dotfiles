return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.icons').setup()
    require('mini.statusline').setup()
    require('mini.git').setup()
    require('mini.diff').setup()
  end,
}

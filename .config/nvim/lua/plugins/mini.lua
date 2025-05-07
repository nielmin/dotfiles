return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.icons').setup()
    require('mini.statusline').setup()
    require('mini.git').setup()
    require('mini.diff').setup()

    require('mini.snippets').setup()
    require('mini.completion').setup()

    require('mini.pick').setup()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ff", "<cmd>Pick files<cr>", { desc = "Search files" })
    keymap.set("n", "<leader>fs", "<cmd>Pick grep_live<cr>", { desc = "Search string in files" })
  end,
}

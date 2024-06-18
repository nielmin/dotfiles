vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt -- for conciseness

-- line numbers
opt.nu = true
opt.rnu = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- scroll
opt.scrolloff = 10

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line & column
opt.cul = true
opt.colorcolumn = '80'

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
-- opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- no generated files
opt.backup = false
opt.swapfile = false

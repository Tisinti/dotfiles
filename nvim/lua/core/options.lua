local opt = vim.opt

-- global statusline
opt.laststatus = 3

-- disable cmd messages
opt.showmode = false

-- enable system clipboard
opt.clipboard:append("unnamedplus")

-- scrolloff for cursor
opt.scrolloff = 8

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

-- statusline characters
opt.fillchars = { eob = " " }

-- enhance searching
opt.ignorecase = true
opt.smartcase = true

-- enable mouse
opt.mouse = "a"

-- numberline
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.ruler = false

-- disable highlight search
opt.hlsearch = false

-- no wrap
opt.wrap = false


-- enbale signcolumn
opt.signcolumn = "yes"

-- default split from bottom-right
opt.splitbelow = true
opt.splitright = true

-- enable guicolors
opt.termguicolors = true

-- file recovery
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- wrap long lines by words
opt.wrap = true
opt.linebreak = true

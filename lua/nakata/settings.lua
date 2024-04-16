vim.g.mapleader = " "

-- basic bg phonetic layout
vim.opt.langmap = "чявертъуиопшщасдфгхйклзьцжбнмЧЯВЕРТЪУИОПШЩАСДФГХЙКЛЗѝЦЖБНМ;`qwertyuiop[]asdfghjklzxcvbnm~QWERTYUIOP{}ASDFGHJKLZXCVBNM,ю\\,Ю\\|,"

-- using system clipboard
vim.opt.clipboard = "unnamedplus"

-- more colors
vim.opt.termguicolors = true

-- use shorter update time (default 4k)
vim.opt.updatetime = 50

-- disable mouse
vim.opt.mouse = nil

-- current line number for relative numbers
vim.opt.number = true
-- show line nubers relative to the cursor
vim.opt.relativenumber = true
-- show first/last lines when scrolling
-- vim.opt.scrolloff = 4

-- spaces per tab
vim.opt.tabstop = 2
-- in edit mode
vim.opt.softtabstop = 2
-- width for autoindents
vim.opt.shiftwidth = 2
-- tabs to spaces
vim.opt.expandtab = true
-- indent a new line the same amount as the line just typed
vim.opt.autoindent = true
vim.opt.smartindent = true

-- commands in bottom bar
vim.opt.showcmd = true
-- autocomplete for command menu
vim.opt.wildmenu = true
-- get bash-like tab completions
vim.opt.wildmode = "list:longest,full"
-- get bash-like tab completions
vim.opt.wildoptions = "pum"

-- show matching characters
vim.opt.showmatch = true
vim.opt.matchpairs:append('<:>')

-- search while typing
vim.opt.incsearch = true
-- highlight while searching
vim.opt.hlsearch = true
-- case insensitive searching
vim.opt.ignorecase = true
-- case sensitive if search has uppercase
vim.opt.smartcase = true

-- make whitespace visable
vim.opt.list = true
-- set trailing spaces
vim.opt.listchars = "trail:•,tab:▷-"

-- open vertical splits on the right
vim.opt.splitright = true
-- open horizontal splits on the bottom
vim.opt.splitbelow = true

-- Keep unsaved changes in closed buffers
vim.opt.hidden = true
-- The encoding in which files are displayed
vim.opt.encoding = "utf-8"
-- The encoding in which files are saved
vim.opt.fileencoding = "utf-8"
vim.opt.swapfile = false

vim.opt.textwidth = 80
-- display the said column colored

-- Set colorcolumn based on textwidth
vim.opt.colorcolumn = nil
-- highlight current cursorline
vim.opt.cursorline = true

vim.opt.completeopt = { "menu", "menuone", "noselect" }


-- TODO: use a before folder with plugn pre settings
-- Plugin Related:
-- ---------------
-- disable default mappings for easy-motion
vim.g.EasyMotion_do_mapping = 0

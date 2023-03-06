vim.opt.langmap = "чявертъуиопшщасдфгхйклзьцжбнмЧЯВЕРТЪУИОПШЩАСДФГХЙКЛЗѝЦЖБНМ;`qwertyuiop[]asdfghjklzxcvbnm~QWERTYUIOP{}ASDFGHJKLZXCVBNM,ю\\,Ю\\|,"               -- basic keyboard layout mapping
vim.opt.clipboard = "unnamedplus"     -- using system clipboard
vim.opt.termguicolors = true          -- more colors
vim.opt.updatetime = 50               -- use shorter update time (default 4k)
vim.opt.mouse = nil                   -- disable mouse

vim.opt.number = true                 -- current line number for relative numbers
vim.opt.relativenumber = true         -- show line nubers relative to the cursor
-- vim.opt.scrolloff = 4                 -- show first/last lines when scrolling

vim.opt.tabstop = 2                   -- spaces per tab
vim.opt.softtabstop = 2               -- in edit mode
vim.opt.shiftwidth = 2                -- width for autoindents
vim.opt.expandtab = true              -- tabs to spaces
vim.opt.smartindent = true
vim.opt.autoindent = true             -- indent a new line the same amount as the line just typed

vim.opt.showcmd = true                -- commands in bottom bar
vim.opt.wildmenu = true               -- autocomplete for command menu
vim.opt.showmatch = true              -- matching braces

vim.opt.hlsearch = true               -- highlight while searching
vim.opt.incsearch = true              -- search while typing
vim.opt.ignorecase = true             -- case insensitive searching
vim.opt.smartcase = true              -- case sensitive if search has uppercase

vim.opt.list = true                   -- make whitespace visable
vim.opt.listchars = "trail:•"         -- set trailing spaces

vim.opt.splitright = true             -- open vertical splits on the right side
vim.opt.splitbelow = true             -- split horizontal below

vim.opt.wildmode = "longest,list"     -- get bash-like tab completions
vim.opt.hidden = true                    -- Keep unsaved changes in closed buffers
vim.opt.encoding = "utf-8"            -- The encoding in which files are displayed
vim.opt.fileencoding = "utf-8"        -- The encoding in which files are saved
vim.opt.swapfile = false

vim.opt.textwidth = 80
-- vim.opt.colorcolumn = "81"            -- display the said column colored
vim.opt.cursorline = true             -- highlight current cursorline

vim.g.mapleader = " "

vim.opt.completeopt = {"menu", "menuone", "noselect"}

-- set explicit filetype for .pl
vim.cmd "autocmd BufNewFile,BufRead *.pl setf prolog"

-- Run R scripts with make
vim.cmd "autocmd FileType r setlocal makeprg=/usr/bin/Rscript\\ %"

-- Run scheme files with racket
vim.cmd "autocmd FileType scheme setlocal makeprg=/usr/bin/racket\\ %"

-- Compile and run cpp files
vim.cmd "autocmd FileType cpp setlocal makeprg=g++\\ %\\ -o\\ %<"

--> OPTIONS:
------------
vim.g.mapleader = " "

-- basic bg phonetic layout
vim.opt.langmap = "чявертъуиопшщасдфгхйклзьцжбнмЧЯВЕРТЪУИОПШЩАСДФГХЙКЛЗѝЦЖБНМ;`qwertyuiop[]asdfghjklzxcvbnm~QWERTYUIOP{}ASDFGHJKLZXCVBNM,ю\\,Ю\\|,"

-- using system clipboard
vim.opt.clipboard = "unnamedplus"

--> KEYMAPS:
------------
-- Don't overwrite the paste buffer
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set({ "n", "x" }, "<leader>d", "\"_d")

-- TODO: (maybe i wont use this)
-- Deleta a line without the newline
vim.keymap.set("n", "dl", "0d$")

-- TODO:
-- navigate/move tabs
vim.keymap.set("n", "gj", "gT")
vim.keymap.set("n", "gk", "gt")
vim.keymap.set("n", "gJ", "<cmd>tabmove -1<return>")
vim.keymap.set("n", "gK", "<cmd>tabmove +1<return>")

vim.keymap.set("n", "Y", "y$")

-- TODO:
-- navigate splits
-- vim.keymap.set("n", "<C-h>", "<C-w>h")
-- vim.keymap.set("n", "<C-j>", "<C-w>j")
-- vim.keymap.set("n", "<C-k>", "<C-w>k")
-- vim.keymap.set("n", "<C-l>", "<C-w>l")

-- easier jump between matching braces
vim.keymap.set("", "<tab>", "%")

-- TODO: (but set relative numbers first)
--" move between visual lines if there is no count prefix
vim.keymap.set(
  { "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'",
  { expr = true, noremap = true }
)
vim.keymap.set(
  { "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'",
  { expr = true, noremap = true }
)

-- TODO:
-- easier normal mode
-- vim.keymap.set("i", "kk", "<esc>")
-- vim.keymap.set("i", "jj", "<esc>")
-- vim.keymap.set("i", "kj", "<esc>")
-- vim.keymap.set("i", "jk", "<esc>")

-- TODO:
-- delete character after cursor
-- vim.keymap.set("i", "<C-l>", "<Del>")

-- TODO:
-- terminal normal mode
-- vim.keymap.set("t", "<C-n>", "<C-\\><C-n>")
-- vim.keymap.set("t", "<C-[>", "<C-\\><C-n>")

-- open new tab
vim.keymap.set("n", "<leader>t", "<cmd>tabnew<return>")

-- TODO:
-- open last opened buffer
-- vim.keymap.set("n", "<leader><tab>", "<C-^>")

-- TODO:
-- open terminal in smaller horizontal split
-- vim.keymap.set("n", "<leader><return>",
--   "<cmd>split | resize -5 | terminal<return>i"
-- )

-- clear highligts
vim.keymap.set("n", "Q", "<cmd>noh<return>")

-- open command line history
vim.keymap.set("n", "<leader>:", "q:")

-- "exit anyways"
vim.keymap.set("n", "q:", "<cmd>q<return>")

-- Jump to last non-blank instead
vim.keymap.set("n", "$", "g_")

-- TODO:
-- format file/selection
-- vim.keymap.set({ "n", "x" }, "<leader>=", "<cmd>LspZeroFormat<return>")

-- prevent (*) from jumping to next match
vim.keymap.set("n", "*", "*``", { silent = true })

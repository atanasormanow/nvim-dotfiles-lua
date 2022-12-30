--vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move visually selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Don't jump at the end when concatenating lines
-- vim.keymap.set("n", "J", "mzJ`z")

-- Center cursor vertically when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Don't overwrite the paste buffer
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- maybe rebind this to something useful
vim.keymap.set("n", "Q", "<nop>")

-- navigate/move tabs
vim.keymap.set("n", "gj", "gT")
vim.keymap.set("n", "gk", "gt")
vim.keymap.set("n", "gJ", "<cmd>tabmove -1<return>")
vim.keymap.set("n", "gK", "<cmd>tabmove +1<return>")

vim.keymap.set("n", "Y", "y$")

-- navigate splits
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- easier jump between matching braces
vim.keymap.set("", "<tab>", "%")

-- easier normal mode
vim.keymap.set("i", "kk", "<esc>")
vim.keymap.set("i", "jj", "<esc>")
vim.keymap.set("i", "kj", "<esc>")
vim.keymap.set("i", "jk", "<esc>")

-- easier normal mode when in terminal mode
vim.keymap.set("t", "<C-n>", "<C-\\><C-n>")

-- open new tab
vim.keymap.set("n", "<leader>t", "<cmd>tabnew<CR>")

-- open last opened buffer
vim.keymap.set("n", "<leader><tab>", "<C-^>")

-- open splits easier
vim.keymap.set("n", "<leader>j", "<C-w>s")
vim.keymap.set("n", "<leader>l", "<C-w>v")

-- open terminal in smaller horizontal split
vim.keymap.set("n", "<leader><CR>",
  "<cmd>split | resize -5 | terminal<return>i"
)

-- clear highligts
vim.keymap.set("n", "<leader>n", "<cmd>noh<CR>")

-- format file/selection
vim.keymap.set("n", "<leader>=", "<cmd>LspZeroFormat<CR>")
vim.keymap.set("v", "<leader>=", "<cmd>LspZeroFormat<CR>")

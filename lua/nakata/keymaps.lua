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

-- Deleta a line without the newline
vim.keymap.set("n", "dl", "0d$")

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

-- delete character after cursor
vim.keymap.set("i", "<C-l>", "<Del>")

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
vim.keymap.set("n", "Q", "<cmd>noh<CR>")

-- open command line history
vim.keymap.set("n", "<leader>:", "q:")

-- "exit anyways"
vim.keymap.set("n", "q:", "<cmd>q<CR>")

-- Jump to last non-blank instead
vim.keymap.set("n", "$", "g_")

-- format file/selection
vim.keymap.set("n", "<leader>=", "<cmd>LspZeroFormat<CR>")
vim.keymap.set("v", "<leader>=", "<cmd>LspZeroFormat<CR>")

-- manage sessions
vim.keymap.set("n", "<leader>ss", "<cmd>SaveSession<CR>")
vim.keymap.set("n", "<leader>sd", "<cmd>DeleteSession<CR>")
vim.keymap.set("n", "<leader>s/", "<cmd>Autosession search<CR>")
vim.keymap.set("n", "<leader>sD", "<cmd>DeleteSession<CR>")

-- toggle undotree
vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>")

-- toggle mouse
vim.keymap.set("n", "<leader>m", function()
  local mouse_opt = vim.opt.mouse:get()
  local state
  if mouse_opt["a"] then
    vim.cmd "set mouse="
    state = "OFF"
  else
    vim.cmd "set mouse=a"
    state = "ON"
  end
  vim.notify("Mouse " .. state)
end)

-- toggle background transparency
vim.keymap.set("n", "<leader>bg", function()
  local gruvbox = require("gruvbox")
  gruvbox.setup({ transparent_mode = not gruvbox.config.transparent_mode })
  vim.cmd("colorscheme gruvbox")
end)

-- toggle colorcolumn at 81
vim.keymap.set("n", "<leader>|", function()
  local state = vim.opt.colorcolumn:get()
  if next(state) == nil then
    vim.cmd "set colorcolumn=81"
  else
    vim.cmd "set colorcolumn="
  end
end)

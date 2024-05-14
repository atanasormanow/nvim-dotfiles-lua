--vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

-- Don't overwrite the paste buffer
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set({ "n", "x" }, "<leader>d", "\"_d")

-- Deleta a line without the newline
vim.keymap.set("n", "dl", "0d$")

-- navigate/move tabs
vim.keymap.set("n", "gj", "gT")
vim.keymap.set("n", "gk", "gt")
vim.keymap.set("n", "gJ", "<cmd>tabmove -1<return>")
vim.keymap.set("n", "gK", "<cmd>tabmove +1<return>")

vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "yu", "yyP")
vim.keymap.set("n", "yd", "yyp")

-- navigate splits
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- easier jump between matching braces
vim.keymap.set("", "<tab>", "%")

--" move between visual lines if there is no count prefix
vim.keymap.set(
  { "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'",
  { expr = true, noremap = true }
)
vim.keymap.set(
  { "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'",
  { expr = true, noremap = true }
)

-- easier normal mode
vim.keymap.set("i", "kk", "<esc>")
vim.keymap.set("i", "jj", "<esc>")
vim.keymap.set("i", "kj", "<esc>")
vim.keymap.set("i", "jk", "<esc>")

-- delete character after cursor
vim.keymap.set("i", "<C-l>", "<Del>")

-- terminal normal mode
vim.keymap.set("t", "<C-n>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-[>", "<C-\\><C-n>")

-- open new tab
vim.keymap.set("n", "<leader>t", "<cmd>tabnew<return>")

-- open last opened buffer
vim.keymap.set("n", "<leader><tab>", "<C-^>")

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

-- Easier jump to the end of line
vim.keymap.set("n", "+", "$", { silent = true })

-- format file/selection
vim.keymap.set({ "n", "x" }, "<leader>=", "<cmd>LspZeroFormat<return>")

-- toggle undotree
vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<return>")

-- prevent (*) from jumping to next match
vim.keymap.set("n", "*", "*``", { silent = true })

-- toggle mouse
vim.keymap.set("n", "<leader>m", function()
  local mouse_opt = vim.opt.mouse:get()
  local state
  if mouse_opt["a"] then
    vim.opt.mouse = nil
    state = "OFF"
  else
    vim.opt.mouse = "a"
    state = "ON"
  end
  vim.notify("Mouse " .. state)
end)

-- toggle colorcolumn at 81
vim.keymap.set("n", "<leader>|", function()
  local state = vim.opt.colorcolumn:get()
  if next(state) == nil then
    vim.opt.colorcolumn = tostring(vim.opt.textwidth:get() + 1)
  else
    vim.opt.colorcolumn = nil
  end
end)

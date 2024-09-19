local vscode = require("vscode-neovim")


--> OPTIONS:
------------
vim.g.mapleader = " "

-- basic bg phonetic layout
vim.opt.langmap =
"чявертъуиопшщасдфгхйклзьцжбнмЧЯВЕРТЪУИОПШЩАСДФГХЙКЛЗѝЦЖБНМ;`qwertyuiop[]asdfghjklzxcvbnm~QWERTYUIOP{}ASDFGHJKLZXCVBNM,ю\\,Ю\\|,"

-- using system clipboard
vim.opt.clipboard = "unnamedplus"

--> KEYMAPS:
--==============================================================================
-- Don't overwrite the paste buffer
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set({ "n", "x" }, "<leader>d", "\"_d")

-- Delete line content (without the newline)
vim.keymap.set("n", "dl", "0d$")

-- Yank until the end of line
vim.keymap.set("n", "Y", "y$")

-- TODO: Don't use splits in vscode that much
--
-- navigate splits
-- vim.keymap.set("n", "<C-h>", "<C-w>h")
-- vim.keymap.set("n", "<C-j>", "<C-w>j")
-- vim.keymap.set("n", "<C-k>", "<C-w>k")
-- vim.keymap.set("n", "<C-l>", "<C-w>l")

-- easier jump between matching braces
vim.keymap.set("", "<tab>", "%")

-- Move between visual lines if there is no count prefix
--
-- NOTE: Set relative numbers for this to make sense
vim.keymap.set(
  { "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'",
  { expr = true, noremap = true }
)
vim.keymap.set(
  { "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'",
  { expr = true, noremap = true }
)

-- Center cursor when page scrolling
--
-- vim.keymap.set("n", "<C-u>", "<C-u>M", { noremap = true })
-- vim.keymap.set("n", "<C-d>", "<C-d>M", { noremap = true })

-- TODO: Should be some weird workaround
--
-- easier normal mode
-- vim.keymap.set("i", "kk", "<esc>")
-- vim.keymap.set("i", "jj", "<esc>")
-- vim.keymap.set("i", "kj", "<esc>")
-- vim.keymap.set("i", "jk", "<esc>")

-- TODO: Hard because its insert mode
--
-- delete character after cursor
-- vim.keymap.set("i", "<C-l>", "<Del>")

-- TODO: Probably impossible
--
-- terminal normal mode
-- vim.keymap.set("t", "<C-n>", "<C-\\><C-n>")
-- vim.keymap.set("t", "<C-[>", "<C-\\><C-n>")

-- Clear highligts
vim.keymap.set("n", "Q", "<cmd>noh<return>")

-- Open command line history
vim.keymap.set("n", "<leader>:", "q:")

-- Exit anyways
vim.keymap.set("n", "q:", "<cmd>q<return>")

-- Jump to last non-blank instead
vim.keymap.set("n", "$", "g_")

-- prevent (*) from jumping to next match
vim.keymap.set("n", "*", "*``", { silent = true })

-- Easier jump to the end of line
vim.keymap.set({ "n", "x" }, "+", "$", { silent = true })

-- Find references
vim.keymap.set(
  "n", "gr",
  function()
    vscode.call(
      'references-view.findReferences',
      { args = { vim.fn.expand('cword') } }
    )
  end)

-- Move to next/previous tab
-- TODO: Why are the commands different?
vim.keymap.set("n", "gk", "<cmd>call <SNR>8_switchEditor(v:count, 'next') <return>n ")
vim.keymap.set("n", "gj", "<cmd>call <SNR>8_switchEditor(v:count, 'prev') <return>n ")

-- Move tab to the left
vim.keymap.set(
  "n", "gJ",
  function()
    vscode.call('workbench.action.moveEditorLeftInGroup')
  end)

-- Move tab to the right
vim.keymap.set(
  "n", "gK",
  function()
    vscode.call('workbench.action.moveEditorRightInGroup')
  end)


-- Open from active tabs
vim.keymap.set(
  "n", "<leader>f",
  function()
    vscode.call("workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup")
  end)


-- Format document
vim.keymap.set(
  "n", "<leader>=",
  function()
    vscode.call("editor.action.formatDocument")
  end)

-- Go to implementation
vim.keymap.set(
  "n", "gi",
  function()
    vscode.call("editor.action.goToImplementation")
  end)

-- Go to type definition
vim.keymap.set(
  "n", "gs",
  function()
    vscode.call("editor.action.goToTypeDefinition")
  end)

-- Toggle sidebar when document is focused
vim.keymap.set(
  "n", "<C-a>",
  function()
    vscode.call("workbench.action.toggleSidebarVisibility")
  end)

-- Jump to lint marks
vim.keymap.set(
  'n', ']d',
  function()
    vscode.call("editor.action.marker.next")
  end)

vim.keymap.set(
  'n', '[d',
  function()
    vscode.call("editor.action.marker.prev")
  end)

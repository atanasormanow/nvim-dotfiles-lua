vim.keymap.set("n", "<leader>f", "<cmd>FzfLua files<CR>")
vim.keymap.set("n", "<leader>gf", "<cmd>FzfLua git_files<CR>")
vim.keymap.set("n", "<leader>/", "<cmd>FzfLua live_grep<CR>")
vim.keymap.set("n", "<leader>*", "<cmd>FzfLua grep_cword<CR>")

vim.keymap.set("v", "<leader>*", "<cmd>FzfLua grep_visual<CR>")

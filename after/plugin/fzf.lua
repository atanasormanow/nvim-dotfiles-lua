require'fzf-lua'.setup {
  winopts = {
    fullscreen = true
  }
}

function _list_sessions()
  local sessions_dir = vim.fn.stdpath('data') .. "/sessions/"
  require 'fzf-lua'.files({
    prompt = "Restore Session> ",
    cmd = "ls",
    cwd = sessions_dir,
    file_icons = false,
    preview_opts = 'hidden',
    actions = {
      ['default'] = function(selected, opts)
        local command = "RestoreSession " .. sessions_dir .. selected[1]
        vim.cmd(command)
      end
    }
  })
end

vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>")
vim.keymap.set("n", "<leader>fo", "<cmd>FzfLua oldfiles<CR>")
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua git_files<CR>")
vim.keymap.set("n", "<leader>f/", "<cmd>FzfLua live_grep<CR>")
vim.keymap.set("n", "<leader>f*", "<cmd>FzfLua grep_cword<CR>")
vim.keymap.set("v", "<leader>f*", "<cmd>FzfLua grep_visual<CR>")
vim.keymap.set("n", "<leader>fzf", "<cmd>FzfLua builtin<CR>")
vim.keymap.set("n", "<leader>fs", "<cmd>lua _list_sessions()<CR>")

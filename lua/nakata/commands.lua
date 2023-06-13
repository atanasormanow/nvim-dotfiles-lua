vim.api.nvim_create_user_command(
  'Datetime',
  function()
    vim.cmd "put =strftime('%a, %b %d, %X')"
  end,
  { bang = true, desc = 'Put the current timestamp under the cursor' }
)

vim.api.nvim_create_user_command(
  'ToggleBackground',
  function()
    local gruvbox = require("gruvbox")
    gruvbox.setup({ transparent_mode = not gruvbox.config.transparent_mode })
    vim.cmd("colorscheme gruvbox")
  end,
  { bang = true, desc = 'Toggle transparent background' }
)

-- Run scheme files with racket
vim.api.nvim_create_autocmd(
  'FileType',
  {
    pattern = 'scheme',
    command = 'setlocal makeprg=/usr/bin/racket\\ %',
  }
)

-- Compile and run cpp files
vim.api.nvim_create_autocmd(
  'FileType',
  {
    pattern = 'cpp',
    command = 'setlocal makeprg=g++\\ %\\ -o\\ %<',
  }
)

-- Enable terminal debugger for Rust
vim.api.nvim_create_autocmd(
  'FileType',
  {
    pattern = 'rust',
    callback = function()
      vim.cmd [[packadd termdebug]]
      -- TODO
      -- vim.g.termdebugger = 'rust-gdb'
    end
  }
)

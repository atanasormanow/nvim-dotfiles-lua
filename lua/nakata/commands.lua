vim.api.nvim_create_user_command(
  'Datetime',
  function(_input)
    vim.cmd "put =strftime('%a, %b %d, %X')"
  end,
  { bang = true, desc = 'Put the current timestamp under the cursor' }
)

vim.api.nvim_create_user_command(
  'ToggleBackground',
  function(_input)
    local gruvbox = require("gruvbox")
    gruvbox.setup({ transparent_mode = not gruvbox.config.transparent_mode })
    vim.cmd("colorscheme gruvbox")
  end,
  { bang = true, desc = 'Toggle transparent background' }
)

-- set explicit filetype for .pl
vim.cmd "autocmd BufNewFile,BufRead *.pl setf prolog"

-- Run R scripts with make
vim.cmd "autocmd FileType r setlocal makeprg=/usr/bin/Rscript\\ %"

-- Run scheme files with racket
vim.cmd "autocmd FileType scheme setlocal makeprg=/usr/bin/racket\\ %"

-- Compile and run cpp files
vim.cmd "autocmd FileType cpp setlocal makeprg=g++\\ %\\ -o\\ %<"
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

-- set explicit filetype for .pl
vim.cmd "autocmd BufNewFile,BufRead *.pl setf prolog"

-- Run R scripts with make
vim.cmd "autocmd FileType r setlocal makeprg=/usr/bin/Rscript\\ %"

-- Run scheme files with racket
vim.cmd "autocmd FileType scheme setlocal makeprg=/usr/bin/racket\\ %"

-- Compile and run cpp files
vim.cmd "autocmd FileType cpp setlocal makeprg=g++\\ %\\ -o\\ %<"

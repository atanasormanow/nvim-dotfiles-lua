require('lualine').setup{
  options = {
    auto_session_create_enabled = false,
  },
}

vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

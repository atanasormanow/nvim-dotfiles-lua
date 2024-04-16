local function setup()
  require('auto-session').setup({
    log_level = "error",
    auto_session_create_enabled = false,
  })

  vim.o.sessionoptions = "buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
end

pcall(setup)

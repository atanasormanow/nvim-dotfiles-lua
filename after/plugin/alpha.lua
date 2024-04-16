local function setup()
  local alpha = require("alpha")
  local dashboard = require("alpha.themes.dashboard")

  -- Set header
  dashboard.section.header.val = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
  }

  -- Set menu
  dashboard.section.buttons.val = {
    dashboard.button("e", " : New file", "<cmd>ene <BAR> startinsert <return>"),
    dashboard.button("f", "󰍉 : Find file", "<cmd>FzfLua files<return>"),
    dashboard.button("o", " : Open Recent", "<cmd>FzfLua oldfiles<return>"),
    dashboard.button("s", "󰣞 : Restore Session", "<cmd> lua _list_sessions()<return>"),
    dashboard.button("n", "󰒓 : NVIM Config", "<cmd>cd ~/.config/nvim | RestoreSession<return>"),
    dashboard.button("q", "󰗼 : Quit NVIM", "<cmd>qa<return>"),
  }

  -- Show fortunes/quotes on the bottom
  -- local fortune = require("alpha.fortune")
  -- dashboard.section.footer.val = fortune()

  -- Send config to alpha
  alpha.setup(dashboard.opts)

  -- Disable folding on alpha buffer
  vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
end

pcall(setup)

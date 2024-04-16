local function setup()
  require("toggleterm").setup {
    size = function(term)
      if term.direction == "horizontal" then
        return 12
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,

    autochdir = true, -- use cwd even if it has changed

    -- TODO: maybe add shading?
    -- highlights = {}, -- set custom color highlights
    -- shade_terminals = true,
    -- shade_filetypes = {},
    -- the percentage by which to lighten terminal background,
    -- default: -30 (gets multiplied by -3 if background is light)
    -- shading_factor = -30,

    start_in_insert = true,
    persist_mode = true,     -- if set to true (default) the previous terminal mode will be remembered

    insert_mappings = false, -- whether or not the open mapping applies in insert mode
    terminal_mappings = false, -- whether or not the open mapping applies in the opened terminals

    persist_size = false,
    close_on_exit = true, -- close the terminal window when the process exits
    -- TODO: Doesn't seem to do anything *shrug*
    -- auto_scroll = true, -- automatically scroll to the bottom on terminal output
  }

  local Terminal = require('toggleterm.terminal').Terminal;

  local term_f = Terminal:new({
    direction = 'float',
    float_opts = {
      border = 'double',
      width = math.floor(vim.o.columns * 0.75),
      height = math.floor(vim.o.textwidth / 3),
      winblend = 0,
    }
  })
  local term_h = Terminal:new({ direction = 'horizontal' })

  function _toggle_floating_term()
    term_f:toggle();
  end

  function _toggle_horiz_term()
    term_h:toggle();
  end

  -- TODO: Can't i just call the function?
  vim.api.nvim_set_keymap("n", "<leader><return>", "<cmd>lua _toggle_horiz_term()<return>", { noremap = true })
  vim.api.nvim_set_keymap("n", "<leader>\\", "<cmd>lua _toggle_floating_term()<return>", { noremap = true })
  -- TODO should be restricted to ft=toggleterm, otherwise tries to execute in fzf
  -- vim.api.nvim_set_keymap("t", "e<return>", "<cmd>ToggleTerm<return>", { noremap = true })
end

pcall(setup)

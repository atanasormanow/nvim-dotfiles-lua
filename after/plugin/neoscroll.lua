local function setup()
  local post_hook = function(payload)
    local _, cursor_row = next(vim.api.nvim_win_get_cursor(0))
    local height = vim.api.nvim_win_get_height(0)
    local buffer_size = vim.api.nvim_buf_line_count(0)

    -- center cursor on half page scroll <=> cursor is not near the beginning/end of the buffer
    if payload == 'center-cursor'
        and cursor_row > height / 2
        and cursor_row < buffer_size - height / 2 + 1
    then
      vim.cmd [[execute "normal! M"]]
    end
  end

  require('neoscroll').setup({
    -- All these keys will be mapped to their corresponding default scrolling animation
    mappings =
    { '<C-u>', '<C-d>', '<C-b>', '<C-f>', '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
    hide_cursor = false,       -- Hide cursor while scrolling
    stop_eof = true,           -- Stop at <EOF> when scrolling downwards
    respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = 'sine',  -- Default easing function
    pre_hook = nil,            -- Function to run before the scrolling animation starts
    post_hook = post_hook,     -- Function to run after the scrolling animation ends
    performance_mode = false,  -- Disable "Performance Mode" on all buffers.
  })

  local t = {}
  t['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '350', 'sine', [['center-cursor']] } }
  t['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '350', 'sine', [['center-cursor']] } }
  t['<C-b>'] = { 'scroll', { '-vim.api.nvim_win_get_height(0)', 'true', '450', 'sine' } }
  t['<C-f>'] = { 'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '450', 'sine' } }

  require('neoscroll.config').set_mappings(t)
end

pcall(setup)

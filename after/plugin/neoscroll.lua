local post_hook = function(info)
  if info == 'center' then vim.cmd [[execute "normal! zz"]] end
end

require('neoscroll').setup({
  -- All these keys will be mapped to their corresponding default scrolling animation
  mappings =
  { '<C-u>', '<C-d>', '<C-b>', '<C-f>', '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
  hide_cursor = false, -- Hide cursor while scrolling
  stop_eof = true, -- Stop at <EOF> when scrolling downwards
  respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
  cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
  easing_function = 'sine', -- Default easing function
  pre_hook = nil, -- Function to run before the scrolling animation starts
  post_hook = post_hook, -- Function to run after the scrolling animation ends
  performance_mode = false, -- Disable "Performance Mode" on all buffers.
})

local t = {}
t['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '350', [['center']] } }
t['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '350', [['center']] } }
t['<C-b>'] = { 'scroll', { '-vim.api.nvim_win_get_height(0)', 'true', '450', [['center']] } }
t['<C-f>'] = { 'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '450', [['center']] } }

require('neoscroll.config').set_mappings(t)

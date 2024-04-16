local function setup()
  -- move to {char}
  vim.keymap.set("", "<leader>F", "<Plug>(easymotion-bd-f)")

  -- " move to line
  vim.keymap.set("", "<Leader>L", "<Plug>(easymotion-bd-jk)")

  -- jump vertical lines
  vim.keymap.set("", "<Leader>j", "<Plug>(easymotion-j)")
  vim.keymap.set("", "<Leader>k", "<Plug>(easymotion-k)")

  -- Gif config
  -- vim.keymap.set("", "/", "<Plug>(easymotion-sn)")
  -- vim.keymap.set("o", "/", "<Plug>(easymotion-tn)")
end

pcall(setup)

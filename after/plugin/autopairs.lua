local function setup()
  require('nvim-autopairs').setup({
    check_ts = true, -- use Treesitter
    disable_filetype = { "fzf" },
    disable_in_replace_mode = true,
    map_cr = true, -- put closing pair on a new line
    map_bs = true, -- map the <BS> key

    map_c_h = true, -- Map the <C-h> key to delete a pair
    -- TODO: this causes an error sometimes

    map_c_w = true,                 -- map <c-w> to delete a pair if possible
    enable_moveright = true,
    enable_check_bracket_line = true, -- check bracket in same line
    enable_bracket_in_quote = true,
    break_undo = true,              -- switch for basic rule break undo sequence
    -- disable_in_macro = false  -- disable when recording or executing a macro
    -- disable_in_visualblock = false -- disable when insert after visual block mode
    -- ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=]
    -- enable_afterquote = true  -- add bracket pairs after quote
    -- enable_abbr = false -- trigger abbreviation
  })
end

pcall(setup)

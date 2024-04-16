local function setup()
  -- Create default mappings
  vim.g.NERDCreateDefaultMappings = 1

  -- Add spaces after comment delimiters by default
  vim.g.NERDSpaceDelims = 1

  -- Align line-wise comment delimiters flush left instead of following code indentation
  vim.g.NERDDefaultAlign = "left"

  -- Enable trimming of trailing whitespace when uncommenting
  vim.g.NERDTrimTrailingWhitespace = 1
end

pcall(setup)

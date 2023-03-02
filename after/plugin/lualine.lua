require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 600,
      tabline = 600,
      winbar = 600,
    },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'diagnostics' },
    lualine_c = {
      { 'filename', path = 1 },
    },
    lualine_x = {
      { 'filetype', icon_only = true },
      'encoding',
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
  inactive_sections = {
    lualine_a = {
      { 'filename', path = 1 },
    },
    lualine_x = {
      { 'filetype', icon_only = true },
      'encoding',
    },
  },
  tabline = {
    lualine_a = {
      { 'tabs', mode = 1 },
    },
    lualine_x = { 'diff', 'branch' },
  },
  winbar = {},
  inactive_winbar = {},
  extensions = {}, -- TODO: maybe use some of {fugitive, fzf, man, quickfix, toggleterm}
}

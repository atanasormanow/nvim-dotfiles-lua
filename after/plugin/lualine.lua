local function setup()
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
      lualine_z = {
        { 'filetype', icon_only = true },
        'encoding',
      },
    },
    tabline = {
      lualine_a = {
        {
          'tabs',
          mode = 1,
          max_length = vim.o.columns * 0.8,
          -- tabs_color = {
          --   -- Same values as the general color option can be used here.
          --   active = 'lualine_{section}_normal', -- Color for active tab.
          --   inactive = 'lualine_{section}_inactive', -- Color for inactive tab.
          -- },
          fmt = function(name, context)
            -- Show + if buffer is modified in tab
            local buflist = vim.fn.tabpagebuflist(context.tabnr)
            local winnr = vim.fn.tabpagewinnr(context.tabnr)
            local bufnr = buflist[winnr]
            local mod = vim.fn.getbufvar(bufnr, '&mod')

            return name .. (mod == 1 and ' +' or '')
          end
        },
      },
      lualine_y = { 'diff', 'branch' },
    },
    extensions = {}, -- TODO: maybe use some of {fugitive, fzf, man, quickfix, toggleterm}
  }
end

pcall(setup)

local function setup()
  local lsp = require('lsp-zero').preset({
    float_border = 'rounded',
    call_servers = 'local',
    configure_diagnostics = true,
    setup_servers_on_start = true,
    set_lsp_keymaps = {
      preserve_mappings = false,
      omit = { 'gi' },
    },
    manage_nvim_cmp = {
      set_sources = 'recommended',
      set_basic_mappings = true,
      set_extra_mappings = false,
      use_luasnip = true,
      set_format = true,
      documentation_window = true,
    },
  })
  lsp.set_sign_icons({
    error = '❌',
    warn = '▲',
    hint = '💡',
    info = 'ℹ'
  })

  lsp.on_attach(function(client, bufnr)
    vim.keymap.set('n', 'gI', '<cmd>lua vim.lsp.buf.implementation()<return>')
  end)

  local lsp_windows = require('lspconfig.ui.windows')
  lsp_windows.default_options.border = 'double'

  local cmp = require('cmp')
  local cmp_select = { behavior = cmp.SelectBehavior.Select }
  local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-l>'] = cmp.mapping.confirm({ select = false }),
  })

  cmp_mappings['<CR>'] = nil

  lsp.setup_nvim_cmp({
    mapping = cmp_mappings
  })

  lsp.nvim_workspace()

  lsp.setup()
end

pcall(setup)

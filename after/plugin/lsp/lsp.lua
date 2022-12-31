local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.set_preferences({
  suggest_lsp_servers = true,
  setup_servers_on_start = true,
  set_lsp_keymaps = true,
  configure_diagnostics = true,
  cmp_capabilities = true,
  manage_nvim_cmp = true,
  sign_icons = {
    error = '>>',
    warn = '>>',
    hint = '>>',
    info = '>>'
  }
})

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

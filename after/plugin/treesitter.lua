require 'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "help", "javascript", "typescript", "c", "cpp", "lua", "rust",
    "haskell", "scheme", "racket", "bash", "html", "css", "diff",
    "markdown", "sql", "vim"
  },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    disable = { "latex" },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      -- set to `false` to disable one of the mappings
      init_selection = "gnn",
      node_incremental = "<C-l>",
      scope_incremental = false, -- NOTE: not sure how this works
      node_decremental = "<C-h>",
    },
  },

  -- NOTE: experimental, could cause a problem
  indent = {
    enable = true
  },
}

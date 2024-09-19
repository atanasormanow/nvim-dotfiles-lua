local function setup()
  require('nvim-treesitter.configs').setup({
    ensure_installed = {
      -- "vimdoc", "javascript", "typescript", "c", "cpp", "lua", "rust",
      -- "haskell", "scheme", "racket", "bash", "html", "css", "diff",
      -- "markdown", "sql", "vim"
    },

    sync_install = false,
    auto_install = true,

    highlight = {
      enable = not vim.g.vscode,
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
        init_selection = "gnn", -- Same as incremental after entering visual mode
        node_incremental = "<C-k>",
        scope_incremental = "<C-h>",
        node_decremental = "<C-j>",
      },
    },

    -- NOTE: experimental, could cause a problem
    indent = {
      enable = true
    },

    -- Additional modules ->
    rainbow = {
      enable = not vim.g.vscode,

      -- list of languages you want to disable the plugin for
      -- disable = {},
    }
  })
end

-- setup()
pcall(setup)

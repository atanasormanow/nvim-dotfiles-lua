local function setup()
  local ts_context = require('treesitter-context')

  ts_context.setup {
    enable = true,
    max_lines = 2,
    trim_scope = 'inner',
    min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
    patterns = {
      -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
      -- For all filetypes
      default = {
        'class',
        'function',
        'method',
        'for',
        'while',
        'if',
        'switch',
        'case',
        'interface',
        'struct',
        'enum',
      },
      -- Patterns for specific filetypes
      tex = {
        'chapter',
        'section',
        'subsection',
        'subsubsection',
      },
      haskell = {
        'adt'
      },
      rust = {
        'impl_item',

      },
      terraform = {
        'block',
        'object_elem',
        'attribute',
      },
      scala = {
        'object_definition',
      },
      vhdl = {
        'process_statement',
        'architecture_body',
        'entity_declaration',
      },
      markdown = {
        'section',
      },
      elixir = {
        'anonymous_function',
        'arguments',
        'block',
        'do_block',
        'list',
        'map',
        'tuple',
        'quoted_content',
      },
      json = {
        'pair',
      },
      typescript = {
        'export_statement',
      },
      yaml = {
        'block_mapping_pair',
      },
    },
    exact_patterns = {
      -- Example for a specific filetype with Lua patterns
      -- Treat patterns.rust as a Lua pattern (i.e "^impl_item$" will
      -- exactly match "impl_item" only)
      -- rust = true,
    },

    zindex = 20,   -- The Z-index of the context window
    mode = 'cursor', -- Line used to calculate context. Choices: 'cursor', 'topline'
    separator = "‾",
  }

  vim.keymap.set(
    "n", "gh",
    function() ts_context.go_to_context() end,
    { silent = true }
  )
end

pcall(setup)

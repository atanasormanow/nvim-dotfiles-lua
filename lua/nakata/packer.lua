-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')

  use({
    'ibhagwan/fzf-lua',
    cond = [[not vim.g.vscode]],
  })

  use({
    'dyng/ctrlsf.vim',
    cond = [[not vim.g.vscode]],
  })

  use({
    'ellisonleao/gruvbox.nvim',
    cond = [[not vim.g.vscode]],
  })

  use({
    'kyazdani42/nvim-web-devicons',
    cond = [[not vim.g.vscode]],
  })

  use({
    'norcalli/nvim-colorizer.lua',
    cond = [[not vim.g.vscode]],
  })

  use({
    'karb94/neoscroll.nvim',
    cond = [[not vim.g.vscode]],
  })

  use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    -- cond = [[not vim.g.vscode]],
  })

  use({
    'nvim-treesitter/nvim-treesitter-context',
    cond = [[not vim.g.vscode]],
  })

  use({
    'HiPhish/nvim-ts-rainbow2',
    -- cond = [[not vim.g.vscode]],
  })

  use({
    'mbbill/undotree',
    cond = [[not vim.g.vscode]]
  })

  use({
    'tpope/vim-fugitive',
    -- cond = [[not vim.g.vscode]]
  })

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
    -- cond = [[not vim.g.vscode]]
  })

  use({
    'easymotion/vim-easymotion',
    cond = [[not vim.g.vscode]]
  })

  use({
    "akinsho/toggleterm.nvim",
    tag = '*',
    cond = [[not vim.g.vscode]]
  })

  use({
    'goolord/alpha-nvim',
    -- branch = 'feature/startify-fortune',
    -- requires = { 'BlakeJC94/alpha-nvim-fortune' }
    cond = [[not vim.g.vscode]]
  })

  use({
    'preservim/nerdcommenter',
    -- cond = [[not vim.g.vscode]]
  })

  use({
    'lervag/vimtex',
    cond = [[not vim.g.vscode]]
  })

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
    -- cond = [[not vim.g.vscode]]
  })

  use({
    'nvim-lualine/lualine.nvim',
    cond = [[not vim.g.vscode]]
  })

  use({
    'rmagatti/auto-session',
    -- Fixed commit due to breaking changes
    commit = '1d3dd70a2d48e0f3441128eb4fb0b437a0bf2cc4',
    cond = [[not vim.g.vscode]]
  })

  use({
    'windwp/nvim-autopairs',
    cond = [[not vim.g.vscode]]
  })

  use({
    'VonHeikemen/lsp-zero.nvim',
    branch = "v2.x",
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    },
    cond = [[not vim.g.vscode]]
  })
end)

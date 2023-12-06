-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')

  use('ibhagwan/fzf-lua')

  use('dyng/ctrlsf.vim')

  use('ellisonleao/gruvbox.nvim')

  use('kyazdani42/nvim-web-devicons')

  use('norcalli/nvim-colorizer.lua')

  use('karb94/neoscroll.nvim')

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use('nvim-treesitter/nvim-treesitter-context')

  use('HiPhish/nvim-ts-rainbow2')

  use('mbbill/undotree')

  use('tpope/vim-fugitive')

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  use('easymotion/vim-easymotion')

  use({ "akinsho/toggleterm.nvim", tag = '*' })

  use({
    'goolord/alpha-nvim',
    -- branch = 'feature/startify-fortune',
    -- requires = { 'BlakeJC94/alpha-nvim-fortune' }
  })

  use('preservim/nerdcommenter')

  use('lervag/vimtex')

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use('nvim-lualine/lualine.nvim')

  use({
    'rmagatti/auto-session',
    -- Fixed commit due to breaking changes
    commit = '1d3dd70a2d48e0f3441128eb4fb0b437a0bf2cc4',
  })

  use('windwp/nvim-autopairs')

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
    }
  })
end)

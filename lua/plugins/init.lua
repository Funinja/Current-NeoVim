local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager

  -- TreeSitter
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }


  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  use {
   'kyazdani42/nvim-tree.lua',
   requires = {
     'kyazdani42/nvim-web-devicons', -- optional, for file icons
   },
   tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

--  use {
  --  'windwp/nvim-ts-autotag'

  --}

  use 'preservim/tagbar'
  use 'p00f/nvim-ts-rainbow'

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'arcticicestudio/nord-vim'


  use 'folke/which-key.nvim'

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use "L3MON4D3/LuaSnip"
  use 'saadparwaiz1/cmp_luasnip'

  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  use "onsails/lspkind.nvim"
  use 'williamboman/mason.nvim'
  use "williamboman/mason-lspconfig.nvim"

  use {
      "windwp/nvim-autopairs",
          config = function() require("nvim-autopairs").setup {} end
  }

  use "windwp/nvim-ts-autotag"
  
  use({
        "glepnir/lspsaga.nvim",
            branch = "main",
                config = function()
                          local saga = require("lspsaga")

                                  saga.init_lsp_saga({
                                                -- your configuration
                                                         })
                                                             end,
                                                             })
end)

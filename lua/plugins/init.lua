local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use "williamboman/nvim-lsp-installer"

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

  
end)

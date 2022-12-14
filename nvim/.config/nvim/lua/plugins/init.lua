local is_installed, packer = pcall(require, 'packer')
local function install_packer()
    vim.fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim',
  })
  vim.cmd('packadd packer.nvim')
  packer = require('packer')
end

if not is_installed then
  install_packer()
end

packer.startup(function(use)
  use ({'wbthomason/packer.nvim'})
  use ({'yggdroot/indentLine'})
  use ({'nelsyeung/twig.vim'})

  use ({
    'machakann/vim-highlightedyank',
    config = function() require('plugins/configs/highlightedyank') end,
  })

  -- use ({
  --   'folke/tokyonight.nvim',
  --   config = function() require('plugins/configs/tokyonight') end,
  -- })

  use ({
    'rebelot/kanagawa.nvim',
    config = function() require('plugins/configs/kanagawa') end,
  })

  use ({
    'ThePrimeagen/harpoon',
    config = function() require('plugins/configs/charpoon') end,
  })

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function() require('plugins/configs/clualine') end,
  }

  use ({
    '907th/vim-auto-save',
    config = function() require('plugins/configs/autosave') end,
  })

  use ({
    'xiyaowong/virtcolumn.nvim',
    config = function() require('plugins/configs/virtcolumn') end,
  })

  use ({
    'neoclide/coc.nvim',
    branch = 'release',
    config = function() require('plugins/configs/coc') end,
  })

  use ({
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function() require('plugins/configs/telescope') end,
  })

  use({
    'nvim-treesitter/nvim-treesitter',
  })

  use({
    'nvim-treesitter/nvim-treesitter-context',
    after = { 'nvim-treesitter' },
    config = function() require('plugins/configs/treesitter-context') end,
  })
end)

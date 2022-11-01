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
  use ({'907th/vim-auto-save'})
  use ({'folke/tokyonight.nvim'})

  use ({
    'neoclide/coc.nvim',
    branch = 'release',
    config = function() require('plugins/configs/coc') end,
  })

  use ({
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  })

  use({
    'nvim-treesitter/nvim-treesitter',
  })

  use({
    'nvim-treesitter/nvim-treesitter-context',
    after = { 'nvim-treesitter' },
    config = function() require('plugins/configs/treesitter-context') end,
  })

  if not is_installed then
    packer.sync()
  end
end)

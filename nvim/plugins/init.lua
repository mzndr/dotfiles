local is_installed, packer = pcall(require, "packer")

if not is_installed then
  vim.fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim",
  })
  vim.cmd("packadd packer.nvim")
  packer = require("packer")
end

packer.startup(function(use)
  use({
    '907th/vim-auto-save'
  })

  use ({
    'neoclide/coc.nvim',
    branch = 'release'
  })

  use({
    "nvim-treesitter/nvim-treesitter",
    config = function() require("plugins/configs/treesitter") end,
  })

  use({
    "nvim-treesitter/nvim-treesitter-context",
    after = {
      "nvim-treesitter",
    },
    config = function() require("plugins/configs/treesitter-context") end,
  })

  if not is_installed then
    packer.sync()
  end
end)

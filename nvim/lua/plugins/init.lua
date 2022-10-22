local is_installed, packer = pcall(require, "packer")

function install_packer()
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

if not is_installed then
  print("Packer not found...")
  install_packer()
else
  print("Packer already installed!")
end  

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use '907th/vim-auto-save'
  use 'folke/tokyonight.nvim' 
end)


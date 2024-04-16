local is_installed, packer = pcall(require, "packer")
local function install_packer()
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
  install_packer()
end

packer.startup(function(use)
  use({ "wbthomason/packer.nvim" })

  -- *** Colorschemes ***
  use({
    "rebelot/kanagawa.nvim",
    config = function()
      require("plugins/configs/kanagawa")
    end,
  })

  -- *** Treesitter ***
  use({
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("plugins/configs/treesitter")
    end,
  })
  use({
    "nvim-treesitter/nvim-treesitter-context",
    after = { "nvim-treesitter" },
    config = function()
      require("plugins/configs/treesitter-context")
    end,
  })

  -- *** Telescope ***
  use({
    "ThePrimeagen/harpoon",
    config = function()
      require("plugins/configs/charpoon")
    end,
  })
  use({
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    requires = { { "nvim-lua/plenary.nvim" } },
    after = { "nvim-treesitter", "harpoon" },
    config = function()
      require("plugins/configs/telescope")
    end,
  })

  -- *** LSP ***
  use { "neovim/nvim-lspconfig" }
  use {
    "williamboman/mason.nvim",
    config = function()
      require("plugins/configs/mason")
    end,
  }
  use {
    "williamboman/mason-lspconfig.nvim",
    after = { "nvim-lspconfig" },
    config = function()
      require("plugins/configs/mason-lspconfig")
    end,
  }

  -- *** Auto Completion ---
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "L3MON4D3/LuaSnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
    },
    config = function()
      require("plugins/configs/cmp")
    end,
  }
  use {
    "saadparwaiz1/cmp_luasnip",
    after = { "nvim-cmp" }
  }

  -- *** Misc ***
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
      require("plugins/configs/clualine")
    end,
  }
  use({
    "machakann/vim-highlightedyank",
    config = function()
      require("plugins/configs/highlightedyank")
    end,
  })
  use({
    "tpope/vim-fugitive",
    config = function()
      require("plugins/configs/fugitive")
    end,
  })

  -- use({
  --   "907th/vim-auto-save",
  --   config = function()
  --     require("plugins/configs/autosave")
  --   end,
  -- })

  use({ "tpope/vim-abolish" })
end)

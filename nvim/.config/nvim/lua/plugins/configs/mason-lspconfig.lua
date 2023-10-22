local mason_lspconfig = require("mason-lspconfig");
local lsp_servers = {
  cssls = {},
  dockerls = {},
  html = {},
  lua_ls = {
    settings = {
      Lua = {
        runtime = {
          version = "LuaJIT",
        },
        diagnostics = {
          globals = { "vim" },
        },
      },
    },
  },
  marksman = {},
  rust_analyzer = {
    settings = {
      ["rust-analyzer"] = {
        cargo = {
          features = "all",
        },
        check = {
          command = "clippy",
        },
      },
    },
  },
  sqlls = {},
  gopls = {},
  tsserver = {},
  jsonls = {},
  yamlls = {
    settings = {
      yaml = {
        keyOrdering = false,
      },
    },
  },
}

mason_lspconfig.setup({
  ensure_installed = vim.tbl_keys(lsp_servers),
  automatic_installation = true,
  handlers = nil,
})

local capabilities = require("cmp_nvim_lsp")
  .default_capabilities(vim.lsp.protocol.make_client_capabilities())

require("mason-lspconfig").setup_handlers {
    function (server_name)
        require("lspconfig")[server_name].setup {
          capabilities = capabilities,
          settings = lsp_servers[server_name].settings,
          filetypes = lsp_servers[server_name].filetypes,
    }
    end
}


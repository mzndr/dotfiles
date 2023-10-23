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
    formatter = true,
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
    formatter = true,
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
local on_attach = function(_, buffer)
  local opts = { buffer = buffer }
  local set = vim.keymap.set


  set('n', '<space>e', vim.diagnostic.open_float)
  set('n', '<C-l>', vim.diagnostic.goto_next)
  set('n', '<C-h>', vim.diagnostic.goto_prev)
  set('n', '<space>q', vim.diagnostic.setloclist)
  set("n", "cr", vim.lsp.buf.rename, opts)
  set("n", "<Leader>lS", vim.lsp.buf.signature_help, opts)
  set({ "n", "v" }, "K", vim.lsp.buf.hover, opts)
  set({ "n", "v" }, "<Leader>la", vim.lsp.buf.code_action, opts)
  set({ "n", "v" }, "<Leader>d", function()
    vim.lsp.buf.format({
      async = true,
      filter = function(lsp)
        return lsp_servers[lsp.name].formatter
      end
    })
  end, opts)
end

require("mason-lspconfig").setup_handlers {
  function(server_name)
    require("lspconfig")[server_name].setup {
      capabilities = capabilities,
      settings = lsp_servers[server_name].settings,
      filetypes = lsp_servers[server_name].filetypes,
      on_attach = on_attach,
    }
  end
}

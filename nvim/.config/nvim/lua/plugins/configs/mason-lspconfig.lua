local mason_lspconfig = require("mason-lspconfig")
local lsp_servers = {
  intelephense = {},
  cssls = {},
  dockerls = {},
  html = {},
  lua_ls = {
    settings = {
      Lua = {
        workspace = {
          checkThirdParty = false,
          library = vim.tbl_deep_extend("force", vim.api.nvim_get_runtime_file("", true), {
            "/usr/share/awesome/lib",
            "/usr/share/lua",
          }),
        },
        diagnostics = {
          globals = {
            "awesome",
            "awful",
            "client",
            "screen",
            "tag",
            "root",
            "vim",
          },
        },
        runtime = { version = "LuaJIT" },
        formatter = true,
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
    formatter = true,
  },
  sqlls = {
    formatter = true,
  },
  gopls = {
    settings = {
      gopls = {
        hints = {
          parameterNames = true,
        },
        experimentalPostfixCompletions = false,
        staticcheck = true,
        -- See:
        --   - https://github.com/golang/tools/blob/master/gopls/doc/analyzers.md
        --   - https://staticcheck.dev/docs/checks/
        analyses = {
          SA9003 = true,
          ST1003 = true,
          ST1016 = true,
          ST1020 = true,
          ST1021 = true,
          ST1022 = true,
          ST1023 = true,
        },
      },
    },
  },
  --tsserver = {},
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

local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
local on_attach = function(_, buffer)
  local opts = { buffer = buffer }
  local set = vim.keymap.set

  vim.api.nvim_buf_create_user_command(buffer, "ToggleInlayHints", function(_)
    local enabled = vim.lsp.inlay_hint.is_enabled({ buffer })
    vim.lsp.inlay_hint.enable(not enabled, { buffer })
  end, {})

  vim.api.nvim_buf_create_user_command(buffer, "ToggleDiagnostics", function(_)
    local enabled = vim.diagnostic.is_enabled({ buffer })
    vim.diagnostic.enable(not enabled, { buffer })
  end, {})

  vim.api.nvim_buf_create_user_command(buffer, "Symbols", function(_)
    vim.lsp.buf.document_symbol()
  end, {})

  set("n", "<space>q", vim.diagnostic.setloclist)
  set("n", "cr", vim.lsp.buf.rename, opts)
  set("n", "<leader>Ls", vim.lsp.buf.document_symbol, opts)
  -- set("n", "<Leader>lS", vim.lsp.buf.signature_help, opts)
  set({ "n", "v" }, "K", vim.lsp.buf.hover, opts)
  set({ "n", "v" }, "<Leader>A", vim.lsp.buf.code_action, opts)
end

require("mason-lspconfig").setup_handlers({
  function(server_name)
    local settings
    local filetypes

    if lsp_servers[server_name] then
      settings = lsp_servers[server_name].settings
      filetypes = lsp_servers[server_name].filetypes
    end

    require("lspconfig")[server_name].setup({
      capabilities = capabilities,
      settings = settings,
      filetypes = filetypes,
      on_attach = on_attach,
    })
  end,
})

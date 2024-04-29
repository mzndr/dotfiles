local cmp = require("cmp")
local luasnip = require("luasnip")

vim.api.nvim_set_hl(0, "CmpNormal", { bg = "#1F1F28" })

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  window = {
    documentation = {
      winhighlight = "Normal:CmpNormal",
    }
  },

  sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
    },
    {
      { name = 'buffer' },
    })
})

cmp.setup.cmdline({ "/", "?" }, {
  sources = {
    { name = "buffer" },
  },
  mapping = cmp.mapping.preset.cmdline(),
})

cmp.setup.cmdline(":", {
  sources = {
    { name = "cmdline" },
    {
      name = "path",
      option = { trailing_slash = true },
    },
  },
  mapping = cmp.mapping.preset.cmdline(),
})

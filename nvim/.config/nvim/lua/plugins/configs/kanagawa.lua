-- Default options:
require('kanagawa').setup({
  undercurl = true,           -- enable undercurls
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = true},
  statementStyle = { bold = true },
  typeStyle = {},
  variablebuiltinStyle = { italic = true},
  specialReturn = true,       -- special highlight for the return keyword
  specialException = true,    -- special highlight for exception handling keywords
  transparent = true,         -- do not set background color
  dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
  globalStatus = false,       -- adjust window separators highlight for laststatus=3
  terminalColors = true,      -- define vim.g.terminal_color_{0,17}
  theme = "default",          -- Load "default" theme or the experimental "light" theme
  overrides = function(colors)
    local theme = colors.theme
    local innerColor = 'NONE';
    local borderBg = 'NONE';
    local borderFg = theme.ui.bg_p2;
    return {
      FloatBorder = { bg = 'NONE' },
      NormalFloat = { bg = 'NONE' },
      LineNr = { bg = 'NONE'},
      SignColumn = { bg = 'NONE'},
      TelescopeTitle = { fg = theme.ui.special, bold = true },
      TelescopePromptBorder = { fg = borderFg, bg = borderBg },
      TelescopeResultsBorder = { fg = borderFg, bg = borderBg },
      TelescopePreviewBorder = { bg = borderBg, fg = borderFg },

      TelescopeResultsNormal = { bg = innerColor },
      TelescopePromptNormal = { bg = innerColor },
      TelescopePreviewNormal = { bg = innerColor },

      CocFloating = { bg =  "#1F1F28" },

      Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
      PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
      PmenuSbar = { bg = theme.ui.bg_m1 },
      PmenuThumb = { bg = theme.ui.bg_p2 },
      
    }
  end,
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")

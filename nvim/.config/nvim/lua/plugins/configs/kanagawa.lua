-- Default options:
require("kanagawa").setup({ -- enable undercurls -- special highlight for the return keyword -- special highlight for exception handling keywords -- do not set background color -- dim inactive window `:h hl-NormalNC` -- adjust window separators highlight for laststatus=3 -- define vim.g.terminal_color_{0,17} -- Load "default" theme or the experimental "light" theme
	undercurl = false,
	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true },
	statementStyle = { bold = true },
	typeStyle = {},
	variablebuiltinStyle = { italic = true },
	specialReturn = true,
	specialException = true,
	transparent = true,
	dimInactive = false,
	globalStatus = false,
	terminalColors = true,
	theme = "default",
	overrides = function(colors)
		local theme = colors.theme
		local palette = colors.palette
		local innerColor = "NONE"
		local borderBg = "NONE"
		local borderFg = theme.ui.bg_p2
		return {
			FloatBorder = { bg = "NONE" },
			NormalFloat = { bg = "NONE" },
			LineNr = { bg = "NONE" },
			SignColumn = { bg = "NONE" },
			TelescopeTitle = {
				fg = theme.ui.special,
				bold = true,
			},
			TelescopePromptBorder = {
				fg = borderFg,
				bg = borderBg,
			},
			TelescopeResultsBorder = {
				fg = borderFg,
				bg = borderBg,
			},
			TelescopePreviewBorder = {
				bg = borderBg,
				fg = borderFg,
			},
			TelescopeResultsNormal = { bg = innerColor },
			TelescopePromptNormal = { bg = innerColor },
			TelescopePreviewNormal = { bg = innerColor },
			CocFloating = { bg = "#1F1F28" },
			Pmenu = {
				fg = theme.ui.shade0,
				bg = theme.ui.bg_p1,
			},
			PmenuSel = {
				fg = "NONE",
				bg = theme.ui.bg_p2,
			},
			PmenuSbar = { bg = theme.ui.bg_m1 },
			PmenuThumb = { bg = theme.ui.bg_p2 },
			Visual = {
				bg = colors.palette.dragonPink,
				fg = colors.palette.dragonBlack1,
			},
		}
	end,
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")

require("tokyonight").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day` -- Enable this to disable setting the background color -- Configure the colors used when opening a `:terminal` in Neovim
	-- Style to be applied to different syntax groups
	-- Value is any valid attr-list value for `:help nvim_set_hl`
	-- Background styles. Can be "dark", "transparent" or "normal" -- style for sidebars, see below -- style for floating windows -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]` -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**. -- dims inactive windows -- When `true`, section headers in the lualine theme will be bold
	style = "night",
	transparent = true,
	terminal_colors = true,
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		sidebars = "dark",
		floats = "dark",
	},
	sidebars = { "qf", "help" },
	day_brightness = 0.3,
	hide_inactive_statusline = false,
	dim_inactive = false,
	lualine_bold = false,
	on_colors = function(colors) end,
	on_highlights = function(highlights, colors) end,
})

vim.cmd("colorscheme tokyonight")

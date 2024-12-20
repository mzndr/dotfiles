local set = vim.opt

set.ignorecase = true
set.smartcase = true
set.wrap = false
set.expandtab = true
set.autoread = true
set.rnu = true
set.signcolumn = "no"
--set.colorcolumn = "0"
set.history = 1000
set.conceallevel = 0
set.scrolloff = 10
set.tabstop = 2
set.shiftwidth = 2
set.number = true
--set.cmdheight = 0
--set.statusline = "%=%f"
vim.g.netrw_altfile = 1
vim.g.netrw_keepj = ""

vim.diagnostic.config({
	severity_sort = true,
	virtual_text = { spacing = 0, prefix = "" },
})

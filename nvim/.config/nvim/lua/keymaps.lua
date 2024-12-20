local set = vim.keymap.set

vim.g.mapleader = " "

set("i", "jj", "<Esc>")
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

set("n", "<leader>p", '"+p')
set("n", "<leader>P", '"+P')
set("v", "<leader>p", '"+p')

set("n", "<leader>y", '"+y')
set("n", "<leader>Y", '"+Y')
set("v", "<leader>y", '"+y')

set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

set("n", "<S-Up>", "<nop>")
set("n", "<S-Down>", "<nop>")
set("i", "<S-Up>", "<nop>")
set("i", "<S-Down>", "<nop>")

set("n", "<leader>x", vim.cmd.bw)
set("n", "<leader>w", vim.cmd.Ex)

set("n", "<space>e", vim.diagnostic.open_float)
set("n", "<C-l>", vim.diagnostic.goto_next)
set("n", "<C-h>", vim.diagnostic.goto_prev)
set("n", "<Leader>K", vim.diagnostic.open_float)

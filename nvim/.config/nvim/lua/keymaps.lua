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

set("n", "<C-l>", "<Plug>(coc-diagnostic-next)", { silent = true })
set("n", "<C-h>", "<Plug>(coc-diagnostic-prev)", { silent = true })

set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

set("n", "<S-Up>", "<nop>")
set("n", "<S-Down>", "<nop>")
set("i", "<S-Up>", "<nop>")
set("i", "<S-Down>", "<nop>")

set("n", "<leader>x", vim.cmd.bw)
set("n", "<leader>w", vim.cmd.Ex)



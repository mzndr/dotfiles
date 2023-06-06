local set = vim.keymap.set

vim.g.mapleader = " "

-- set("i", "jj", "<Esc>")
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

set("n", "<leader>p", '"+p')
set("n", "<leader>P", '"+P')
set("v", "<leader>p", '"+p')

set("n", "<leader>y", '"+y')
set("n", "<leader>Y", '"+Y')
set("v", "<leader>y", '"+y')

set("n", "<C-j>", "<Plug>(coc-diagnostic-next)", { silent = true })
set("n", "<C-k>", "<Plug>(coc-diagnostic-prev)", { silent = true })

set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

set("n", "<S-Up>", "<nop>")
set("n", "<S-Down>", "<nop>")
set("i", "<S-Up>", "<nop>")
set("i", "<S-Down>", "<nop>")

set("n", "<leader>x", vim.cmd.bw)
set("n", "<leader>w", vim.cmd.Ex)

set("n", "<leader>z", vim.cmd.UndotreeToggle)

set("n", "<leader>gs", ":Gstatus<CR>")
set("n", "<leader>gb", ":Gblame<CR>")
set("n", "<leader>go", ":Gbrowse<CR>")
set("n", "<leader>gc", ":Gcommit<CR>")
set("n", "<leader>gp", ":!git push<CR>")
set("n", "<leader>ga", ":!git add %<CR>")

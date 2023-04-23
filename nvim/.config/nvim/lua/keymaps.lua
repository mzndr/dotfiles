vim.g.mapleader = " "
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')


vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('n', '<leader>P', '"+P')
vim.keymap.set('v', '<leader>p', '"+p')

vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')
vim.keymap.set('v', '<leader>y', '"+y')

vim.keymap.set('n', '<C-j>', '<Plug>(coc-diagnostic-prev)', {silent = true})
vim.keymap.set('n', '<C-k>', '<Plug>(coc-diagnostic-next)', {silent = true})

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set('n', '<S-Up>', '<nop>')
vim.keymap.set('n', '<S-Down>', '<nop>')
vim.keymap.set('i', '<S-Up>', '<nop>')
vim.keymap.set('i', '<S-Down>', '<nop>')

vim.keymap.set('n', '<leader>x', vim.cmd.bw)
vim.keymap.set('n', '<leader>w', vim.cmd.Ex)

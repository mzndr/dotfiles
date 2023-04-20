vim.g.mapleader = " "
vim.keymap.set('i', 'jj', '<Esc>',{})

local options = { noremap=true, silent=true }

vim.api.nvim_set_keymap('', '<S-Up>', '<nop>', options)
vim.api.nvim_set_keymap('', '<S-Down>', '<nop>', options)

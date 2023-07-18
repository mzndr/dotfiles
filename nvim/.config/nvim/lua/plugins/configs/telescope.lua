local builtin = require("telescope.builtin")
local telescope = require("telescope")

telescope.load_extension("harpoon")
telescope.load_extension("coc")

vim.keymap.set("n", "<leader>f", builtin.find_files, {})
vim.keymap.set("n", "<leader>gg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>d", telescope.extensions.coc.diagnostics, {})

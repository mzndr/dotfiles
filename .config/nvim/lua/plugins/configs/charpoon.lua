local keyset = vim.keymap.set
local opts = { silent = true }

keyset("n", "<leader>ha", function() require("harpoon.ui").toggle_quick_menu() end, opts)
keyset("n", "<leader>a",  function() require("harpoon.mark").add_file() end, opts)

keyset("n", "<leader>j", function() require("harpoon.ui").nav_file(1) end, opts)
keyset("n", "<leader>k", function() require("harpoon.ui").nav_file(2) end, opts)
keyset("n", "<leader>l", function() require("harpoon.ui").nav_file(3) end, opts)
keyset("n", "<leader>;", function() require("harpoon.ui").nav_file(4) end, opts)

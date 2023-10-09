local builtin = require("telescope.builtin")
local telescope = require("telescope")

telescope.setup({
  file_ignore_pattern = { ".git" },
  pickers = {
    find_files = {
      hidden = false
    },
  },
  extensions = {
    coc = {
        prefer_locations = true, -- always use Telescope locations to preview definitions/declarations/implementations etc
    }
  },
})

telescope.load_extension("harpoon")
telescope.load_extension("coc")

vim.keymap.set("n", "<leader>f",  builtin.find_files, {})
vim.keymap.set("n", "<leader>gg", builtin.live_grep, {})
-- vim.keymap.set("n", "<Leader>gs", builtin.lsp_document_symbols)
-- vim.keymap.set("n", "<Leader>gd", builtin.lsp_definitions)
-- vim.keymap.set("n", "<Leader>gt", builtin.lsp_type_definitions)
-- vim.keymap.set("n", "<Leader>gi", builtin.lsp_implementations)
-- vim.keymap.set("n", "<Leader>gr", builtin.lsp_references)

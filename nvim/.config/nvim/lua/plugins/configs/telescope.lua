local builtin = require("telescope.builtin")
local telescope = require("telescope")

telescope.setup({
  pickers = {
    find_files = {
      find_command = {
        "rg",
        "--files",
        "--hidden",
        "--glob",
        "!*/.git/*",
        "--glob",
        "!*/.sqlx/*",
        "--glob",
        "!.sqlx/*",
        "--glob",
        "!.git/*",
        "--glob",
        "!*.lock",
        "--glob",
        "!*/package-lock.json",
        "--glob",
        "!*/pnpm-lock.yaml",
        "--glob",
        "!*.png",
        "--glob",
        "!*.jpeg",
        "--glob",
        "!*.jpg",
      },
    },
    live_grep = {
      additional_args = function()
        return { "--hidden" }
      end,
      glob_pattern = {
        "!*/.git/*",
        "!.git/*",
        "!*/.sqlx/*",
        "!*.lock",
        "!*.png",
        "!*.jpg",
        "!*.jpeg",
        "!*/package-lock.json",
        "!*/pnpm-lock.yaml",
      },
    },
  },
})

telescope.load_extension("harpoon")

vim.keymap.set("n", "<leader>f", builtin.find_files, {})
vim.keymap.set("n", "<leader>gg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>gj", builtin.diagnostics, {})
vim.keymap.set("n", "<leader>gq", builtin.quickfix, {})

vim.keymap.set("n", "<Leader>gd", builtin.lsp_definitions)
vim.keymap.set("n", "<Leader>gr", builtin.lsp_references)
vim.keymap.set("n", "<Leader>gt", builtin.lsp_type_definitions)
vim.keymap.set("n", "<Leader>gi", builtin.lsp_implementations)
vim.keymap.set("n", "<Leader>gs", builtin.lsp_document_symbols)
vim.keymap.set("n", "<Leader>gS", builtin.lsp_dynamic_workspace_symbols)

vim.keymap.set("n", "<Leader>gic", builtin.git_commits)
vim.keymap.set("n", "<Leader>gis", builtin.git_status)
vim.keymap.set("n", "<Leader>gif", builtin.git_files)

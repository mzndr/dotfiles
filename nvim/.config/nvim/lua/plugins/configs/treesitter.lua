local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
  ensure_installed = {
    "css",
    "dockerfile",
    "fish",
    "gitignore",
    "html",
    "javascript",
    "jsdoc",
    "json",
    "json5",
    "jsonc",
    "lua",
    "markdown",
    "markdown_inline",
    "rust",
    "toml",
    "typescript",
    "vue",
    "yaml",
    "bash",
  },
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
})

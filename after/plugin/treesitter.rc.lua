local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "markdown",
    "markdown_inline",
    "tsx",
    "typescript",
    "javascript",
    "toml",
    "php",
    "json",
    "yaml",
    "css",
    "html",
    "lua",
    "go",
    "c",
    "cpp",
    "dockerfile",
    "elixir",
    "regex",
    "rust",
    "ruby",
    "vue",
    "zig",
    "yaml",
    "proto"
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable         = true,
    enable_autocmd = false,
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

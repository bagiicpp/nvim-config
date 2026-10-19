-- Tree-sitter highlighting
local treesitter = require("nvim-treesitter")

local languages = {
  "lua",
  "python",
  "javascript",
  "typescript",
  "tsx",
  "html",
  "css",
  "json",
  "go",
  "nix",
  "bash",
  "markdown",
  "yaml",
  "toml",
}

-- Install missing language parsers
treesitter.install(languages)

-- Enable highlighting for supported filetypes
vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})


-- Code formatting with Conform.nvim

local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    -- Python
    python = { "ruff_format" },

    -- Lua
    lua = { "stylua" },

    -- JavaScript / TypeScript
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },

    -- Web
    html = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },
    json = { "prettier" },
    jsonc = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },

    -- Go
    go = { "gofmt" },

    -- Nix
    nix = { "nixfmt" },
  },

  -- Only format when explicitly requested
  format_on_save = nil,

  notify_on_error = true,
  notify_no_formatters = true,
})


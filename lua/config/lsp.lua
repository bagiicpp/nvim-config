-- Native Neovim LSP (0.12.4)
vim.lsp.config("gopls", {
  filetypes = { "go", "gomod", "gowork" },
})

-- Lua configuration
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      workspace = {
        library = {
          vim.env.VIMRUNTIME,
        },
        checkThirdParty = false,
      },
    },
  },
})

-- Python configuration
vim.lsp.config("basedpyright", {
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "standard",
        diagnosticMode = "openFilesOnly",
      },
    },
  },
})

-- Enable language servers
vim.lsp.enable({
  "lua_ls",
  "basedpyright",
  "ts_ls",
  "gopls",
  "nixd",
})

-- Minimal diagnostics
vim.diagnostic.config({
  virtual_text = false,
  underline = true,
  signs = true,
  severity_sort = true,

  float = {
    border = "single",
    source = true,
  },
})

-- LSP keybindings
local map = vim.keymap.set

map("n", "gd", vim.lsp.buf.definition, {
  desc = "Go to definition",
})

map("n", "gr", vim.lsp.buf.references, {
  desc = "Find references",
})

map("n", "K", vim.lsp.buf.hover, {
  desc = "Hover documentation",
})

map("n", "<leader>rn", vim.lsp.buf.rename, {
  desc = "Rename symbol",
})

map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {
  desc = "Code action",
})

map("n", "<leader>d", vim.diagnostic.open_float, {
  desc = "Show diagnostics",
})

map("n", "[d", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, {
  desc = "Previous diagnostic",
})

map("n", "]d", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, {
  desc = "Next diagnostic",
})


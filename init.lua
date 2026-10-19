-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Core configuration
require("config.options")
require("config.keymaps")

-- Native plugin manager (Neovim 0.12.4)
vim.pack.add({
  "https://github.com/tomasr/molokai",

  "https://github.com/sphamba/smear-cursor.nvim",
  "https://github.com/nvim-treesitter/nvim-treesitter",
  "https://github.com/nvim-tree/nvim-tree.lua",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/nvim-tree/nvim-web-devicons",
  "https://github.com/nvim-lualine/lualine.nvim",
  "https://github.com/folke/snacks.nvim",
  "https://github.com/stevearc/conform.nvim",
  "https://github.com/lewis6991/gitsigns.nvim",
  "https://github.com/nvim-mini/mini.pairs",
  "https://github.com/nvim-mini/mini.surround",

  -- Autocompletion
  {
    src = "https://github.com/saghen/blink.cmp",
    version = vim.version.range("1.0"),
  },
})


-- Molokai theme
vim.opt.background = "dark"
vim.g.molokai_original = 1

-- Transparent backgrounds
local function transparent_background()
  local groups = {
    "Normal",
    "NormalNC",
    "NormalFloat",
    "SignColumn",
    "EndOfBuffer",
    "LineNr",
    "LineNrAbove",
    "LineNrBelow",
    "FoldColumn",
  }

  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "NONE" })
  end
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = transparent_background,
})

vim.cmd.colorscheme("molokai")
transparent_background()

-- Smooth cursor animation
require("smear_cursor").setup({
  smear_between_buffers = true,
  smear_between_neighbor_lines = true,
  scroll_buffer_space = true,
  smear_insert_mode = true,
})

-- Plugins
require("config.treesitter")
require("config.explorer")
require("config.lsp")
require("config.completion")
require("config.picker")
require("config.statusline")
require("config.formatting")
require("config.git")
require("config.pairs")
require("config.surround")


-- Minimal autocompletion
require("blink.cmp").setup({
  -- Our own keybindings
  keymap = {
    preset = "none",

    ["<Tab>"] = { "select_next", "fallback" },
    ["<S-Tab>"] = { "select_prev", "fallback" },
    ["<CR>"] = { "accept", "fallback" },

    ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
    ["<C-e>"] = { "hide", "fallback" },
  },

  completion = {
    list = {
      selection = {
        preselect = false,
        auto_insert = false,
      },
    },

    menu = {
      border = "single",

      draw = {
        columns = {
          { "label", "label_description", gap = 1 },
          { "kind" },
        },
      },
    },

    documentation = {
      auto_show = true,
      auto_show_delay_ms = 350,
      window = {
        border = "single",
      },
    },

    ghost_text = {
      enabled = false,
    },
  },

  -- Keep completion sources minimal
  sources = {
    default = { "lsp", "path", "buffer" },
  },

  -- No Rust toolchain required
  fuzzy = {
    implementation = "lua",
  },

  -- Leave command-line completion native
  cmdline = {
    enabled = false,
  },
})


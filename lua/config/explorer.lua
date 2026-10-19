-- Minimal file explorer
require("nvim-tree").setup({
  view = {
    side = "right",
    width = 32,
    relativenumber = false,
    number = false,
    signcolumn = "no",
  },

  renderer = {
    group_empty = true,
    root_folder_label = false,

    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
        diagnostics = false,
      },

      web_devicons = {
        file = {
          enable = true,
          color = true,
        },
        folder = {
          enable = true,
          color = true,
        },
      },
    },
  },

  filters = {
    dotfiles = false,
    git_ignored = true,
  },

  git = {
    enable = true,
  },
})


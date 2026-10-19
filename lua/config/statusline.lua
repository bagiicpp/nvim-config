local colors = {
  fg = "#cfcfc2",
  muted = "#858579",
  green = "#a6e22e",
  pink = "#f92672",
  yellow = "#e6db74",
  cyan = "#66d9ef",
}

local transparent = { bg = "NONE", fg = colors.fg }

local theme = {
  normal = {
    a = { bg = "NONE", fg = colors.green },
    b = transparent,
    c = transparent,
  },
  insert = {
    a = { bg = "NONE", fg = colors.cyan },
  },
  visual = {
    a = { bg = "NONE", fg = colors.pink },
  },
  replace = {
    a = { bg = "NONE", fg = colors.yellow },
  },
  command = {
    a = { bg = "NONE", fg = colors.yellow },
  },
  inactive = {
    a = transparent,
    b = transparent,
    c = transparent,
  },
}

require("lualine").setup({
  options = {
    theme = theme,
    globalstatus = true,
    component_separators = "",
    section_separators = "",
    icons_enabled = true,
    disabled_filetypes = {
      statusline = { "NvimTree" },
    },
  },


  sections = {
    lualine_a = {
      {
        "mode",
        fmt = string.upper,
        color = { fg = "#a6e22e", gui = "bold" },
        padding = { left = 2, right = 1 },
      },
    },

    lualine_b = {
      {
        "filename",
        path = 1,
        color = { fg = "#f8f8f2" },
      },
      {
        "branch",
        icon = "",
        color = { fg = "#66d9ef" },
      },
    },

    lualine_c = {},

    lualine_x = {
      {
        "diagnostics",
        symbols = {
          error = "E ",
          warn = "W ",
          info = "I ",
          hint = "H ",
        },
      },
    },

    lualine_y = {
      {
        "filetype",
        colored = true,
      },
    },

    lualine_z = {
      {
        "location",
        color = { fg = "#a6e22e" },
        padding = { left = 1, right = 2 },
      },
    },
  },

  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
})

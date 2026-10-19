-- Surround existing text with brackets, quotes, etc.
require("mini.surround").setup({
  mappings = {
    add = "sa",
    delete = "sd",
    replace = "sr",
    find = "sf",
    find_left = "sF",
    highlight = "sh",

    suffix_last = "l",
    suffix_next = "n",
  },

  n_lines = 20,
  respect_selection_type = false,
})


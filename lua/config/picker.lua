-- Searchable command palette
local Snacks = require("snacks")

Snacks.setup({
  picker = {
    enabled = true,
    layout = {
      preset = "default",
    },
  },
})

local map = vim.keymap.set

map("n", "<C-p>", function()
  Snacks.picker.smart()
end, { desc = "Quick open" })

map("n", "<leader>fc", function()
  Snacks.picker.commands()
end, { desc = "Command palette" })

map("n", "<leader>ff", function()
  Snacks.picker.files()
end, { desc = "Find files" })

map("n", "<leader>fg", function()
  Snacks.picker.grep()
end, { desc = "Search project text" })

map("n", "<leader>fb", function()
  Snacks.picker.buffers()
end, { desc = "Switch buffers" })


local map = vim.keymap.set

-- Save
map("n", "<leader>w", "<cmd>write<cr>", {
  desc = "Save file",
})

-- Exit insert mode
map("i", "jk", "<Esc>", {
  desc = "Exit insert mode",
})

map("i", "jk", "<Esc>", {
  desc = "Exit insert mode",
})

-- Window navigation
map("n", "<C-h>", "<C-w>h", {
  desc = "Move to left window",
})

map("n", "<C-j>", "<C-w>j", {
  desc = "Move to lower window",
})

map("n", "<C-k>", "<C-w>k", {
  desc = "Move to upper window",
})

map("n", "<C-l>", "<C-w>l", {
  desc = "Move to right window",
})

-- Window splitting
map("n", "<leader>sv", "<cmd>vsplit<cr>", {
  desc = "Split vertically",
})

map("n", "<leader>sh", "<cmd>split<cr>", {
  desc = "Split horizontally",
})

map("n", "<leader>sx", "<cmd>close<cr>", {
  desc = "Close current window",
})

-- Clear search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<cr>", {
  desc = "Clear search highlights",
})

-- Move selected lines
map("v", "J", ":m '>+1<CR>gv=gv", {
  desc = "Move selection down",
})

map("v", "K", ":m '<-2<CR>gv=gv", {
  desc = "Move selection up",
})

-- Toggle file explorer
vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeToggle<CR>", {
  desc = "Toggle file explorer",
  silent = true,
})

-- Format current file
vim.keymap.set("n", "<leader>gf", function()
  require("conform").format({
    async = true,
    lsp_format = "fallback",
    timeout_ms = 3000,
  })
end, {
  desc = "Format current file",
})


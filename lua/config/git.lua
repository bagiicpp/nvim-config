local gs = require("gitsigns")

gs.setup({
  -- Minimal Git indicators
  signs = {
    add          = { text = "│" },
    change       = { text = "│" },
    delete       = { text = "_" },
    topdelete    = { text = "‾" },
    changedelete = { text = "~" },
    untracked    = { text = "┆" },
  },

  -- Keep the interface clean
  current_line_blame = false,
  linehl = false,
  numhl = false,
  word_diff = false,

  on_attach = function(bufnr)
    local function map(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, {
        buffer = bufnr,
        desc = desc,
      })
    end

    -- Navigate changes
    map("n", "]h", function()
      gs.nav_hunk("next")
    end, "Next Git change")

    map("n", "[h", function()
      gs.nav_hunk("prev")
    end, "Previous Git change")

    -- Inspect changes
    map("n", "<leader>gp", gs.preview_hunk,
      "Preview Git change")

    map("n", "<leader>gb", function()
      gs.blame_line({ full = true })
    end, "Git blame")

    -- Stage changes
    map("n", "<leader>gs", gs.stage_hunk,
      "Stage Git hunk")

    map("n", "<leader>gu", gs.undo_stage_hunk,
      "Undo staged hunk")

    -- Show file diff
    map("n", "<leader>gd", gs.diffthis,
      "Git diff")
  end,
})


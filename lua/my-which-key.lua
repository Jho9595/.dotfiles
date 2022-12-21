-- Use which-key to add extra bindings with the leader-key prefix
-- for golang
lvim.builtin.which_key.mappings["g"] = {
  name = "Golang (vim-go)",
  s = { "<cmd>GoFillStruct<cr>", "Go Fill Struct" },
  t = { "<cmd>GoAddTags<cr>", "Go Add Tags" },
  T = { "<cmd>GoTest<cr>", "Go Test Function" },
  e = { "<cmd>GoIfErr<cr>", "Go Auto Generate 'if err" }
}

-- for harpoon
lvim.builtin.which_key.mappings["<leader>"] = {
  name = "Harpoon",
  m = { "<cmd>lua require('harpoon.mark').add_file()<cr>", "Mark for Harpoon" },
  t = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "Toggle Quick Menu" },
  a = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", "Go to file 1" },
  b = { "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", "Go to file 2" },
  c = { "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", "Go to file 3" },
  d = { "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", "Go to file 4" },
  n = { "<cmd>lua require('harpoon.ui').nav_next()<cr>", "Go to next" },
  p = { "<cmd>lua require('harpoon.ui').nav_prev<cr>", "Go to previous" },
}

-- PERF: hop can be used in telescope / file explorer to quicly navigate. use j and k
-- for hop.vim in visual mode
lvim.builtin.which_key.vmappings["h"] = {
  name = "Hop",
  -- easy-motion like
  w = { "<cmd>HopWordAC<cr>", "Hop words AC" },
  b = { "<cmd>HopWordBC<cr>", "Hop words BC" },
  j = { "<cmd>HopLineAC<cr>", "Hop lines AC" },
  k = { "<cmd>HopLineBC<cr>", "Hop lines BC" },
  -- anywhere
  a = { "<cmd>HopAnywhereAC<cr>", "Hop anywhere AC" },
  A = { "<cmd>HopAnywhereBC<cr>", "Hop anywhere BC" },
  -- anywhere currentline
  c = { "<cmd>HopAnywhereCurrentLine<cr>", "Hop anywhere currentline" },

  -- sneak like
  s = { "<cmd>HopChar2AC<cr>", "Hop 2 character AC" },
  S = { "<cmd>HopChar2BC<cr>", "Hop 2 character BC" },
}

-- for hop.vim in normal mode
lvim.builtin.which_key.mappings["h"] = {
  name = "Hop",
  -- easy-motion like
  w = { "<cmd>HopWordAC<cr>", "Hop words AC" },
  b = { "<cmd>HopWordBC<cr>", "Hop words BC" },
  j = { "<cmd>HopLineAC<cr>", "Hop lines AC" },
  k = { "<cmd>HopLineBC<cr>", "Hop lines BC" },
  -- anywhere
  a = { "<cmd>HopAnywhereAC<cr>", "Hop anywhere AC" },
  A = { "<cmd>HopAnywhereBC<cr>", "Hop anywhere BC" },
  -- anywhere currentline
  c = { "<cmd>HopAnywhereCurrentLine<cr>", "Hop anywhere currentline" },

  -- sneak like
  s = { "<cmd>HopChar2AC<cr>", "Hop 2 character AC" },
  S = { "<cmd>HopChar2BC<cr>", "Hop 2 character BC" },
}

-- others
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}

lvim.builtin.which_key.mappings["G"] = {
  name = "Git",
  g = { "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle()<cr>", "Lazygit" },
  j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
  k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
  l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
  p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
  r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
  R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
  s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
  u = {
    "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
    "Undo Stage Hunk",
  },
  o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
  b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
  C = {
    "<cmd>Telescope git_bcommits<cr>",
    "Checkout commit(for current file)",
  },
  d = {
    "<cmd>Gitsigns diffthis HEAD<cr>",
    "Git Diff",
  }
}

lvim.builtin.which_key.mappings["H"] = { "<cmd>nohlsearch<CR>", "No Highlight" }
lvim.builtin.which_key.mappings["r"] = { "<cmd>LspRestart<CR>", "Restart LSP" }

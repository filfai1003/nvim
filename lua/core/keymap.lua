
local wk = require("which-key")
wk.setup(opts)

-- GENERAL
wk.add({
  {"<leader>q", "<cmd>q<cr>", desc = "Quit"},
  {"<leader>w", "<cmd>w<cr>", desc = "Write"},

  -- LAZY
  {"<leader>L", "<cmd>Lazy<cr>", desc = "Lazy"},

  -- TELESCOPE
  {"<leader>f", name = "Telescope"},
  {"<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File"},
  {"<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep"},
  {"<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers"},
  {"<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags"},
  {"<leader>e", "<cmd>Telescope file_browser<cr>", desc = "File Explorer"},

  -- MASON
  {"<leader>M", "<cmd>Mason<cr>", desc = "Mason"},

  -- LSP
  {"<leader>l", name = "LSP"},
  {"<leader>lf", function() vim.lsp.buf.format() end, desc = "Format"},
  {"<leader>lr", function() vim.lsp.buf.rename() end, desc = "Rename / Refactor"},
  {"<leader>la", function() require("tiny-code-action").code_action() end, desc = "Code Actions"},
  {"<leader>lh", function() vim.lsp.buf.hover() end, desc = "Hover / Docs"},

  -- LSP GO TO
  {"<leader>g", name = "Go to"},
  {"<leader>gd", function() vim.lsp.buf.definition() end, desc = "Go to Definition"},
  {"<leader>gD", function() vim.lsp.buf.declaration() end, desc = "Go to Declaration"},
  {"<leader>gi", function() vim.lsp.buf.implementation() end, desc = "Go to Implementation"},
  {"<leader>gr", function() vim.lsp.buf.references() end, desc = "Go to References"},

  -- TERMINAL
  {"<C-t>", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal", mode = {"n", "t"}},

  -- COPILOT CHAT
  {"<leader>c", "<cmd>CopilotChat<cr>", desc = "Open Chat"},

  -- HARPOON
  {"<leader>h", name = "Harpoon"},
  {"<leader>hh", function() require("harpoon.mark").add_file() end, desc = "Harpoon Add File"},
  {"<leader>hr", function() require("harpoon.mark").rm_file() end, desc = "Harpoon Remove File"},
  {"<leader>hm", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Harpoon Quick Menu"},
  {"<C-h>", function() require("harpoon.ui").nav_file(1) end, desc = "Harpoon Go to File 1"},
  {"<C-j>", function() require("harpoon.ui").nav_file(2) end, desc = "Harpoon Go to File 2"},
  {"<C-k>", function() require("harpoon.ui").nav_file(3) end, desc = "Harpoon Go to File 3"},
  {"<C-l>", function() require("harpoon.ui").nav_file(4) end, desc = "Harpoon Go to File 4"},

  -- UNDO TREE
  { "<leader>u", vim.cmd.UndotreeToggle, desc = "Toggle UndoTree" },
})

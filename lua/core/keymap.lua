
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

  -- DEBUG (DAP)
  {"<F8>", function() require("dap").continue() end, desc = "Run / Continue"},
  {"<F9>", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint"},
  {"<F10>", function() require("dap").step_over() end, desc = "Step Over"},
  {"<F11>", function() require("dap").step_into() end, desc = "Step Into"},
  {"<F12>", function() require("dap").terminate() end, desc = "Terminate Debug"},

  -- TODO: confirm completion <CR>
  -- TODO: next completion down arrow
  -- TODO: previous completion up arrow
})

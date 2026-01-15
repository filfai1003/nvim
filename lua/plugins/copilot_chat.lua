return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    "zbirenbaum/copilot.lua",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- Copilot engine SOLO chat
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
    })

    require("CopilotChat").setup({
      window = {
        layout = "float",
        relative = "editor",
        border = "rounded",
        width = 0.8,
        height = 0.8,
      },
      auto_insert_mode = true,
    })
  end,
}

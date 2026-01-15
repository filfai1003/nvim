
return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  config = function()
    local cmp = require("cmp")

    cmp.setup({
      completion = { autocomplete = { "InsertEnter", "TextChanged" } },

      mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"]      = cmp.mapping.confirm({ select = true }),
        ["<C-e>"]     = cmp.mapping.abort(),
        ["<Up>"]   = cmp.mapping.select_prev_item(),
        ["<Down>"] = cmp.mapping.select_next_item(),
      }),

      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      }),

      window = {
        completion    = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },

      experimental = {
        ghost_text = false,
      },
    })
  end,
}

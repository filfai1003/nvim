return {
  "supermaven-inc/supermaven-nvim",
  event = "InsertEnter",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<Tab>",
        accept_word = nil,
      },
      ignore_filetypes = {},
      disable_inline_completion = false,
      disable_keymaps = false,
    })
  end,
}

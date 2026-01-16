return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    "jay-babu/mason-null-ls.nvim",
    "nvimtools/none-ls.nvim",

    "jay-babu/mason-nvim-dap.nvim",
    "mfussenegger/nvim-dap",
  },
  config = function()
    require("mason").setup()

    local lspconfig = require("lspconfig")

    require("mason-lspconfig").setup({
      automatic_installation = true,

      handlers = {
        function(server_name)
          if server_name == "jdtls" then
            return
          end
          lspconfig[server_name].setup({})
        end,
      },
    })

    require("mason-null-ls").setup({ automatic_installation = true })
    require("mason-nvim-dap").setup({ automatic_installation = true })
  end,
}

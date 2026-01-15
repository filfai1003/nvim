
return {
    "williamboman/mason.nvim",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
        require("mason").setup({
            ui = {
                border = "rounded",
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
        })

        require("mason-lspconfig").setup({
            ensure_installed = {
                "jdtls", -- Java LSP
            },
            automatic_installation = true,
        })
    end,
}

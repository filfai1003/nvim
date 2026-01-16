return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {            
            -- Java LSP
            "jdtls",
        },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
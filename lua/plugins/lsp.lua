
return {
    "neovim/nvim-lspconfig",
    config = function()
        -- Java LSP (jdtls) setup
        vim.lsp.config("jdtls", {
            cmd = { vim.fn.stdpath("data") .. "/mason/bin/jdtls" },
            filetypes = { "java" },
            root_dir = vim.fs.dirname(
                vim.fs.find({ "pom.xml", "build.gradle", ".git" }, { upward = true })[1]
            ),
        })
        vim.lsp.enable("jdtls")
    end,
}

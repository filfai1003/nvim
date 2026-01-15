
-- LSP Diagnostics Configuration
vim.diagnostic.config({
    virtual_text = {
        prefix = "●",
        spacing = 10,
    },
    signs = true,
    underline = true,
    update_in_insert = false,
    float = {
        border = "rounded",
        source = "always",
    },
})

-- Show diagnostics in a floating window on CursorHold
vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        vim.diagnostic.open_float(nil, {
            focus = false,
            scope = "cursor",
            border = "rounded",
            source = "always",
        })
    end,
})

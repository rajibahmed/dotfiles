require("null-ls").setup({
    -- you can reuse a shared lspconfig on_attach callback here
    sources = {
        require("null-ls").builtins.formatting.prettier,
        require("null-ls").builtins.formatting.eslint,
        require("null-ls").builtins.completion.spell,
    },
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
        end
    end,
})

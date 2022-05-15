
require("null-ls").setup({
  -- you can reuse a shared lspconfig on_attach callback here
  sources = {
    require("null-ls").builtins.formatting.prettier,
    require("null-ls").builtins.formatting.eslint,
    require("null-ls").builtins.completion.luasnip,
  },
})


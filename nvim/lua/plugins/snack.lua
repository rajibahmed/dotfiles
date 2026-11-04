return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        replace_netrw = true,
      },
      picker = {
        sources = {
          explorer = {
            layout = {
              layout = {
                position = "right",
              },
            },
          },
        },
      },
    },
  },
  -- NOTE: trouble.nvim is configured by LazyVim. The old
  -- `use_diagnostic_signs` option was removed in trouble.nvim v3, and the
  -- spec used to be nested inside the snacks.nvim spec, so it was ignored.
}

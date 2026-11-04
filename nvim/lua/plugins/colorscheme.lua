return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = function(_, opts)
      -- Use the matching variant for the current system appearance:
      -- One Dark for dark mode, One Light for light mode.
      opts.style = vim.o.background == "light" and "light" or "dark"
    end,
    config = function()
      -- Neovim reloads the colorscheme when 'background' changes, but
      -- onedark.nvim keeps its `light` style when switching back to dark.
      -- Fix the style before the reload so the right variant is applied.
      vim.api.nvim_create_autocmd("ColorSchemePre", {
        group = vim.api.nvim_create_augroup("user_onedark_theme", { clear = true }),
        pattern = "onedark",
        callback = function()
          if not vim.g.onedark_config then
            return
          end
          local style = vim.o.background == "light" and "light" or "dark"
          if vim.g.onedark_config.style ~= style then
            require("onedark").setup({ style = style })
          end
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "onedark" },
  },
}

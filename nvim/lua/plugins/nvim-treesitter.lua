-----------------------------------------------------------
-- Treesitter configuration file
----------------------------------------------------------

-- Plugin: nvim-treesitter
-- url: https://github.com/nvim-treesitter/nvim-treesitter


require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "lua", "rust", "typescript" },
  auto_install = true,
  highlight = {
    enable = true,
  },
}

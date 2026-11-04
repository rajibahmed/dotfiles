-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--
vim.g.lazyvim_picker = "fzf"

vim.opt.relativenumber = false

-- Follow the macOS light/dark appearance. Applied before the colorscheme
-- loads; lua/config/theme.lua keeps it in sync afterwards.
require("config.theme").apply()

--[[

  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝


Neovim init file
Version: 0.47.1 - 2022/02/27
Maintainer: brainf+ck
Website: https://github.com/brainfucksec/neovim-lua

--]]

-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------
require('core/vim-plug')
require('core/settings')
require('core/keymaps')
require('plugins/alpha-nvim')
require('plugins/nvim-cmp')
require('plugins/nvim-treesitter')
require('plugins/nvim-tree')
--require('plugins/luasaga')
require('plugins/git-signs')
require('plugins/feline')
require('plugins/null-ls')
require('plugins/nvim-lspconfig')



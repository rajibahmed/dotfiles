--[[

  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝


Neovim init file

--]]

-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------

require('core/vim-plug')
require('core/colors')
require('core/settings')
require('core/keymaps')
require('plugins/alpha-nvim')
require('plugins/nvim-cmp')
require('plugins/nvim-treesitter')
require('plugins/nvim-tree')
require('plugins/git-signs')
require('plugins/feline')
require('plugins/null-ls')
require('plugins/nvim-lspconfig')
require('plugins/comment')

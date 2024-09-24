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

require("core/vim-plug")
require("core/colors")
require("core/settings")
require("core/keymaps")
require("plugins/alpha-nvim")
require("plugins/nvim-cmp")
require("plugins/nvim-treesitter")
require("plugins/nvim-tree")
require("plugins/git-signs")
require("plugins/null-ls")
require("plugins/nvim-lspconfig")
require("plugins/comment")
require("plugins/neotest")
require("plugins/nvim-dap")
require("plugins/feline")
require("plugins/mason")

-- simple plugin setups
require("nvim-surround").setup({})
require("nvim-autopairs").setup({})
require("nvim-tmux-navigation").setup({
  disable_when_zoomed = true, -- defaults to false
  keybindings = {
    left = "<C-h>",
    down = "<C-j>",
    up = "<C-k>",
    right = "<C-l>",
    last_active = "<C-\\>",
    next = "<C-Space>",
  },
})

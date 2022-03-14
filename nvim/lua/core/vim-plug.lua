-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: vim-plug
-- url: https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README
--- neovim-lua/README.md
--- https://github.com/brainfucksec/neovim-lua#readme

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- language server
Plug('neovim/nvim-lspconfig')
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')

Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('glepnir/lspsaga.nvim')

-- laguage support
Plug('klen/python-mode')
Plug('puremourning/vimspector')

-- snippets
Plug('L3MON4D3/LuaSnip')
Plug('honza/vim-snippets')
Plug('epilande/vim-react-snippets')

-- utils
Plug('editorconfig/editorconfig-vim')
Plug('christoomey/vim-tmux-navigator')

-- colors
Plug('morhetz/gruvbox')
Plug('rakr/vim-one')
Plug('endel/vim-github-colorscheme')
Plug('gorodinskiy/vim-coloresque')
Plug('reedes/vim-colors-pencil')

-- fuzzy finder
Plug('junegunn/fzf')
--Plug('junegunn/fzf.vim')
Plug('ibhagwan/fzf-lua')
Plug('stsewd/fzf-checkout.vim')

-- git
Plug('tpope/vim-fugitive')
Plug('tpope/vim-rhubarb')
Plug('nvim-lua/plenary.nvim')
Plug('lewis6991/gitsigns.nvim')

-- dashboard
Plug('goolord/alpha-nvim')

-- file explorer
Plug('kyazdani42/nvim-web-devicons')
Plug('kyazdani42/nvim-tree.lua')

-- status line
Plug('feline-nvim/feline.nvim')
Plug('jeffkreeftmeijer/vim-nightfall')

Plug('jose-elias-alvarez/null-ls.nvim')

vim.call('plug#end')

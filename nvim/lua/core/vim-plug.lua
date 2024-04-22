-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: vim-plug

local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")

-- language server
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })

Plug("neovim/nvim-lspconfig")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("hrsh7th/cmp-buffer")
Plug("hrsh7th/cmp-path")
Plug("hrsh7th/cmp-cmdline")
Plug("hrsh7th/nvim-cmp")

-- laguage support
Plug("klen/python-mode")
Plug("puremourning/vimspector")

-- snippets
Plug("L3MON4D3/LuaSnip")
Plug("saadparwaiz1/cmp_luasnip")
Plug("rafamadriz/friendly-snippets")

-- utils
Plug("editorconfig/editorconfig-vim")
Plug("numToStr/Comment.nvim")
Plug("alexghergh/nvim-tmux-navigation")

-- colors
Plug("morhetz/gruvbox")
Plug("navarasu/onedark.nvim")
Plug("endel/vim-github-colorscheme")
Plug("gorodinskiy/vim-coloresque")
Plug("reedes/vim-colors-pencil")

-- fuzzy finder
Plug("junegunn/fzf", { ["do"] = "-> fzf#install()" })
Plug("ibhagwan/fzf-lua")
Plug("stsewd/fzf-checkout.vim")

-- git
Plug("tpope/vim-fugitive")
Plug("tpope/vim-rhubarb")
Plug("nvim-lua/plenary.nvim")
Plug("lewis6991/gitsigns.nvim")

-- dashboard
Plug("goolord/alpha-nvim")

-- file explorer
Plug("kyazdani42/nvim-web-devicons")
Plug("kyazdani42/nvim-tree.lua")

-- status line
Plug("feline-nvim/feline.nvim")
Plug("jeffkreeftmeijer/vim-nightfall")
Plug("jose-elias-alvarez/null-ls.nvim")
Plug("rust-lang/rust.vim")
Plug("fatih/vim-go", { ["do"] = ":GoUpdateBinaries" })
Plug("windwp/nvim-autopairs")
Plug("kylechui/nvim-surround")

-- auto tests
Plug("nvim-neotest/neotest")
Plug("nvim-neotest/nvim-nio")
Plug("olimorris/neotest-rspec")
Plug("nvim-neotest/neotest-jest")

vim.call("plug#end")

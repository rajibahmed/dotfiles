set encoding=utf-8

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'machakann/vim-highlightedyank'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'skwp/greplace.vim'
Plug 'klen/python-mode'

"Group dependencies, vim-snippets depends on ultisnips
Plug 'honza/vim-snippets'
Plug 'epilande/vim-react-snippets',{'type': 'opt'}

"COMMON
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'christoomey/vim-tmux-navigator'

"System plug
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'

"call minpac#adin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'  "required by fugitive to :Gbrowse

"PHP
Plug 'stanangeloff/php.vim', {'type': 'opt'}

"RUBY
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-bundler'
Plug 'rdolgushin/groovy.vim', {'type': 'opt'}

"JAVASCRIPT
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node'
Plug 'posva/vim-vue', {'type': 'opt'}
Plug 'mxw/vim-jsx'

"COMPILED
Plug 'rust-lang/rust.vim'
Plug 'elixir-lang/vim-elixir', {'type': 'opt'}

"Colors
Plug 'morhetz/gruvbox'
Plug 'endel/vim-github-colorscheme'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-repeat'
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-colors-pencil'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'LnL7/vim-nix'
Plug 'mhinz/vim-startify'
call plug#end()

"match it with methods
runtime macros/matchit.vim

source ~/dotfiles/nvim/base_settings.vim
source ~/dotfiles/nvim/completion_settings.vim
source ~/dotfiles/nvim/lint_settings.vim
source ~/dotfiles/nvim/lightline_settings.vim
source ~/dotfiles/nvim/fzf_settings.vim
source ~/dotfiles/nvim/search_settings.vim


let g:surround_no_mappings=1

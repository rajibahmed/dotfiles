set encoding=utf-8


call plug#begin('~/.config/nvim/plugged')

Plug 'Shougo/deoplete.nvim'
Plug 'autozimu/LanguageClient-neovim'
Plug 'machakann/vim-highlightedyank'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'skwp/greplace.vim'
Plug 'klen/python-mode'
Plug 'easymotion/vim-easymotion'

"Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'epilande/vim-react-snippets',{'type': 'opt'}

"COMMON
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'christoomey/vim-tmux-navigator'


"System plug
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-endwise'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'

"call minpac#ad(in outside ~/.vim/plugged with post-update hook
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

"GOLANG
Plug 'nsf/gocode'
Plug 'fatih/vim-go'

"Colors
Plug 'morhetz/gruvbox'
Plug 'endel/vim-github-colorscheme'
Plug 'gorodinskiy/vim-coloresque'
Plug 'tpope/vim-repeat'
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-colors-pencil'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'itchyny/calendar.vim'

call plug#end()

"match it with methods
runtime macros/matchit.vim

source ~/dotfiles/nvim/base_settings.vim
source ~/dotfiles/nvim/completion_settings.vim
source ~/dotfiles/nvim/lint_settings.vim
source ~/dotfiles/nvim/lightline_settings.vim
source ~/dotfiles/nvim/fzf_settings.vim
source ~/dotfiles/nvim/search_settings.vim


"autocmd BufWritePost * if &diff == 1 | colorscheme github | endif

let g:ale_fix_on_save=1
let g:surround_no_mappings=1

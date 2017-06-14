set encoding=utf-8
let emmetFiles = ["html","xhtml","xml","xaml","xsd","xsl","css","less","scss","sass","styl","svg"]


call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'nono/vim-handlebars'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe', { 'do': 'python3 install.py --clang-completer --gocode-completer --tern-completer' }

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'

"PHP
Plug 'stanangeloff/php.vim', { 'for': 'php' }

"RUBY
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails'
Plug 'rdolgushin/groovy.vim'

"GOLANG
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'nsf/gocode', { 'for': 'go' }

"JAVASCRIPT
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }


"COMMON
Plug 'neomake/neomake'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim', { 'for': emmetFiles }
Plug 'editorconfig/editorconfig-vim'
call plug#end()

let mapleader=","

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype php setlocal ts=4 sts=4 sw=4
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

"ultiSnips settings
let g:UltiSnipsExpandTrigger="<c-t>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"


"jsx setting
let g:jsx_ext_required = 0

"NerdTree
let g:NERDTreeWinPos = "right"
nnoremap <silent> <Leader>\ :NERDTreeToggle<CR>

set relativenumber
set number
set nowrap

nnoremap <silent> <Leader><space> :noh<CR>
nmap ; :

source ~/dotfiles/nvim/neomake_settings.vim
source ~/dotfiles/nvim/lightline_settings.vim
source ~/dotfiles/nvim/fzf_settings.vim
source ~/dotfiles/nvim/search_settings.vim

highlight ColorColumn ctermbg=Blue

if !isdirectory($HOME."/.config/nvim/undo-dir")
    call mkdir($HOME."/.config/nvim/undo-dir", "", 0700)
endif
set undodir=~/.config/nvim/undo-dir
set undofile

set backupdir=~/.config/nvim/backup
set directory=~/.config/nvim/temp

let g:webdevicons_enable_nerdtree = 1

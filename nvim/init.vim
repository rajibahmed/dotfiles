set encoding=utf-8

packadd minpac

call minpac#init()

call minpac#add('morhetz/gruvbox')
call minpac#add('junegunn/vim-easy-align')
call minpac#add('nono/vim-handlebars')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('janko-m/vim-test')

" Group dependencies, vim-snippets depends on ultisnips
call minpac#add('SirVer/ultisnips')
call minpac#add('honza/vim-snippets')
call minpac#add('Valloric/YouCompleteMe')

"COMMON
call minpac#add('neomake/neomake')
call minpac#add('tpope/vim-surround')

call minpac#add('mattn/emmet-vim')
call minpac#add('editorconfig/editorconfig-vim')
call minpac#add('christoomey/vim-tmux-navigator')

" On-demand loadig
call minpac#add('scrooloose/nerdtree')
call minpac#add('tpope/vim-fireplace')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('itchyny/lightline.vim')

" call minpac#ad(in outside ~/.vim/plugged with post-update hook
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
call minpac#add('tpope/vim-fugitive')

"PHP
call minpac#add('stanangeloff/php.vim')

"RUBY
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('tpope/vim-rails')
call minpac#add('rdolgushin/groovy.vim')

"GOLANG
call minpac#add('fatih/vim-go')
call minpac#add('nsf/gocode')

"JAVASCRIPT
call minpac#add('pangloss/vim-javascript')
call minpac#add('posva/vim-vue')
call minpac#add('moll/vim-node')
call minpac#add('mxw/vim-jsx')
call minpac#add('ternjs/tern_for_vim')

"RUST
call minpac#add('rust-lang/rust.vim')


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
nmap <silent> ss :sp<CR>
nmap <silent> vv :vs<CR>

source ~/dotfiles/nvim/neomake_settings.vim
source ~/dotfiles/nvim/lightline_settings.vim
source ~/dotfiles/nvim/fzf_settings.vim
source ~/dotfiles/nvim/search_settings.vim

if !isdirectory($HOME."/.config/nvim/undo-dir")
  call mkdir($HOME."/.config/nvim/undo-dir", "", 0700)
endif

set undodir=~/.config/nvim/undo-dir
set undofile

set backupdir=~/.config/nvim/backup
set directory=~/.config/nvim/temp

let g:webdevicons_enable_nerdtree = 1
let g:rubycomplete_rails = 1

"vim-test options
" make test commands execute using dispatch.vim
let test#strategy = "neomake"

nmap <silent> <leader>p :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

"Ctrl HJKL navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


if has('nvim')

  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  set inccommand=nosplit

  tnoremap <Esc> <C-\><C-n>
  tnoremap <a-h> <c-\><c-n><c-w>h
  tnoremap <a-j> <c-\><c-n><c-w>j
  tnoremap <a-k> <c-\><c-n><c-w>k
  tnoremap <a-l> <c-\><c-n><c-w>l

  nnoremap <a-h> <c-w>h
  nnoremap <a-j> <c-w>j
  nnoremap <a-k> <c-w>k
  nnoremap <a-l> <c-w>l
endif

"match it with methods
runtime macros/matchit.vim

" minpac commands:
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

"color
set background=dark
colorscheme gruvbox

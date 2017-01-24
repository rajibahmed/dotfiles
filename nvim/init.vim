call plug#begin()
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe'

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
Plug 'tpope/vim-rails',   { 'for': 'ruby' }

"GOLANG
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'nsf/gocode', { 'for': 'go' }

"JAVASCRIPT
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'

"COMMON
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'taglist.vim'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'

call plug#end()


function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

let mapleader=","

nnoremap <silent> <Leader>b :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>


syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype php setlocal ts=4 sts=4 sw=4
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

let g:UltiSnipsExpandTrigger="<c-t>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


let g:jsx_ext_required = 0

"NERDTree

autocmd StdinReadPre * let s:std_in=1

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

nnoremap <silent> ,\ :NERDTreeToggle<CR>

set relativenumber
set number
set nowrap

"...
"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu

"FZF
nnoremap <silent> <Leader>t :FZF<CR>
nnoremap <silent> <Leader><space> :noh<CR>

"vim basic settings
let mapleader=","

set relativenumber
set number
set nowrap
inoremap jj <Esc>

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype php setlocal ts=4 sts=4 sw=4
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

nnoremap <silent> <Leader><space> :noh<CR>
nmap ; :
nmap <silent> ss :sp<CR>
nmap <silent> vv :vs<CR>

let g:rubycomplete_rails = 1

"ultiSnips settings
let g:UltiSnipsExpandTrigger="<c-t>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsUsePythonVersion = 3

"jsx setting
let g:jsx_ext_required = 0

"Ctrl HJKL navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-H> <C-W><C-H>
"color
set background=dark
colorscheme gruvbox

"visual block indent
vnoremap < <gv
vnoremap > >gv

if !isdirectory($HOME."/.config/nvim/undo-dir")
  call mkdir($HOME."/.config/nvim/undo-dir", "", 0700)
endif

set undodir=~/.config/nvim/undo-dir
set undofile

set backupdir=~/.config/nvim/backup
set directory=~/.config/nvim/temp


let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_alto = 1
let g:netrw_winsize = 25
let g:netrw_preview = 1
nnoremap <silent> <Leader>\ :Vexplore<CR>

"vim-test options
" make test commands execute using dispatch.vim
let test#strategy = "neomake"

nmap <silent> <Leader>p :TestNearest<CR>
nmap <silent> <Leader>T :TestFile<CR>
nmap <silent> <Leader>a :TestSuite<CR>
nmap <silent> <Leader>l :TestLast<CR>
nmap <silent> <Leader>g :TestVisit<CR>

nmap <silent> <Leader>s :Gstatus<CR>
nmap <silent> <Leader>c :Gw<CR>

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <a-h> <c-\><c-n><c-w>h
  tnoremap <a-j> <c-\><c-n><c-w>j
  tnoremap <a-k> <c-\><c-n><c-w>k
  tnoremap <a-l> <c-\><c-n><c-w>l

  nnoremap <a-h> <c-w>h
  nnoremap <a-j> <c-w>j
  nnoremap <a-k> <c-w>k
  nnoremap <a-l> <c-w>l

  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  let g:loaded_python_provider=1                   " Disable python 2 interface
  let g:python_host_skip_check=1                   " Skip python 2 host check
  let g:python3_host_prog='/usr/local/bin/python3' " Set python 3 host program
  set inccommand=nosplit
endif

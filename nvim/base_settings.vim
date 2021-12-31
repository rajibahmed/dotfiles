"(vim basic settings
let mapleader=","

set number
set nowrap
set autoread
set lazyredraw
set mouse=a

inoremap jk <Esc>

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"set spell spelllang=en_us
nnoremap <silent> <esc> :noh<CR>

"Splitting windows
nmap <silent> ss :sp<CR>
nmap <silent> vv :vs<CR>

"jsx setting
let g:jsx_ext_required = 0

"Ctrl HJKL navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-H> <C-W><C-H>

"Color
set background=dark
colorscheme gruvbox

"Visual block indent
vnoremap < <gv
vnoremap > >gv

if !isdirectory($HOME."/.config/nvim/undo-dir")
  call mkdir($HOME."/.config/nvim/undo-dir", "", 0700)
endif
set undodir=~/.config/nvim/undo-dir
set undofile

if !isdirectory($HOME."/.config/nvim/backup")
  call mkdir($HOME."/.config/nvim/backup", "", 0700)
endif
set backupdir=~/.config/nvim/backup

if !isdirectory($HOME."/.config/nvim/temp")
  call mkdir($HOME."/.config/nvim/temp", "", 0700)
endif
set directory=~/.config/nvim/temp


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

  let g:loaded_python_provider=1                   " Disable python 2 interface
  let g:python_host_skip_check=1                   " Skip python 2 host check
  let g:python3_host_prog='/usr/bin/python' " Set python 3 host program
  set inccommand=nosplit
endif


function! MyFoldText() " {{{
  let line = getline(v:foldstart)

  let nucolwidth = &fdc + &number * &numberwidth
  let windowwidth = winwidth(0) - nucolwidth - 3
  let foldedlinecount = v:foldend - v:foldstart

  " expand tabs into spaces
  let onetab = strpart('          ', 0, &tabstop)
  let line = substitute(line, '\t', onetab, 'g')

  let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
  let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
  return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction " }}}
set foldtext=MyFoldText()

augroup ft_ruby
  au!
  au Filetype ruby setlocal foldmethod=syntax
  au BufRead,BufNewFile Capfile setlocal filetype=ruby
augroup END


"-- FOLDING --
set foldmethod=syntax "syntax highlighting items specify folds
let javaScript_fold=1 "activate folding by JS syntax
set foldlevelstart=10 "start file with all folds opened
nnoremap zO zczO
nnoremap <Space> za


let g:surround_45 = "<% \r %>"
let g:surround_61 = "<%= \r %>"
let g:surround_{char2nr("d")} = "<div\1id: \r..*\r id=\"&\"\1>\r</div>"

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

command! Json silent! :%!python -m json.tool

augroup ft_php
  au!
  au FileType php packadd php.vim
  au Filetype php setlocal ts=4 sts=4 sw=4
augroup END

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

let g:pymode = 1
let g:pymode_python = 'python3'
let g:pymode_warnings = 1
let g:rustfmt_autosave = 1

highlight Visual term=reverse cterm=reverse guibg=Grey
highlight ColorColumn ctermfg=252
"set colorcolumn=81

function! MyGoyoConfig()
  set nonumber
  set signcolumn=no
  set colorcolumn=""
  let g:gruvbox_contrast_dark='soft'
endfunction

augroup GoyoOverrides
  au!
  autocmd User GoyoEnter call MyGoyoConfig()
  autocmd User GoyoLeave set number
augroup END

let g:deoplete#enable_at_startup = 1

nnoremap n nzzzv
nnoremap N Nzzzv
" Visual Mode */# from Scrooloose {{{
function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction

vnoremap * :<c-u>call <sid>VSetSearch()<cr>//<cr><c-o>
vnoremap # :<c-u>call <sid>VSetSearch()<cr>??<cr><c-o>

autocmd BufEnter *.tsx set filetype=typescript

" Clipboard
vmap <space>y "+y
nmap <space>yy "+yy
nmap <space>p "+p
nmap <space>P "+P

command! W  write


augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

"NerdTree is back
let g:NERDTreeWinPos = "right"
nnoremap <silent> <Leader><Tab> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>f :NERDTreeFind<CR>

nmap <Leader>z :bprev<CR>
nmap <Leader>x :bnext<CR>

nmap <Leader>s :Git! <CR>
nmap <Leader>w :Gwrite<CR>

noremap <Leader>gss :Git! push<CR>
noremap <Leader>gll :Git! pull<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

" GitGutter
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

let g:werewolf_day_themes = ['github']
let g:werewolf_night_themes = ['gruvbox']

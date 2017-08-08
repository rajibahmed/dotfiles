" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

"" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Find silent! grep! <args>|cwindow|redraw!
nnoremap \ :Find<SPACE>

nnoremap <Leader>r :%s/\<<C-r><C-w>\>/

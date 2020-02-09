let $FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

nnoremap <silent> <Leader>t :Files<CR>
nnoremap <silent> <Leader>gf :GitFiles?<CR>
nnoremap <silent> ; :Buffers<CR>
nmap <Leader>r :Tags<CR>

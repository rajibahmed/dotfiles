"configure neomake
autocmd! BufWritePost * silent Neomake

let g:neomake_list_height = 5
let g:neomake_open_list = 2
let g:neomake_verbose = 2

let g:neomake_javascript_eslint_exe = system('PATH=$(npm bin):$PATH && which eslint | tr -d "\n"')
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_php_enabled_makers = ['php', 'phpcs']
"let g:neomake_ruby_enabled_makers = ['rubocop']
let g:neomake_go_enabled_makers = ['go']

set hidden
let g:LanguageClient_serverCommands = {
            \ 'c': [ 'clangd' ],
            \ 'cpp': [ 'clangd' ],
            \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
            \ 'python': [ 'pyls' ],
            \ 'ruby': [ 'solargraph',  'stdio' ],
            \ 'html': ['html-languageserver', '--stdio'],
            \ 'css':  ['css-languageserver', '--stdio'],
            \ 'less': ['less-languageserver', '--stdio'],
            \ 'json': ['json-languageserver', '--stdio'],
            \ 'javascript.jsx': ['typescript-language-server', '--stdio'],
            \ 'javascript': ['typescript-language-server', '--stdio'],
            \ 'typescript': ['typescript-language-server', '--stdio'],
            \ }
"USE theia ide language server here `npm install -g typescript-language-server`

let g:LanguageClient_autoStop = 0
let g:LanguageClient_selectionUI = 'fzf'


nmap <silent> K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)
set completefunc=LanguageClient#complete

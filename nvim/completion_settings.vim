set hidden
let g:LanguageClient_serverCommands = {
            \ 'c': [ 'clangd' ],
            \ 'cpp': [ 'clangd' ],
            \ 'rust': ['rustup', 'run', 'stable', 'rls'],
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
let g:deoplete#sources = {}
let g:deoplete#sources.php = ['ultisnips', 'tags', 'buffer']
let g:deoplete#sources.ruby = ['solargraph', 'ultisnips', 'tags', 'buffer']


nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>


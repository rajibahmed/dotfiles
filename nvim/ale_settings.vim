let g:ale_enable=0
let g:ale_pattern_options = {'\.min.js$': {'ale_enabled': 0}}

let g:ale_fixers = {
      \   'ruby': ['all'],
      \   'rust': ['all'],
      \   'javascript': [
      \       'eslint',
      \       {buffer, lines -> filter(lines, 'v:val !=~ ''^\s*//''')},
      \   ],
      \}

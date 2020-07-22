" -- enable using compile commands
let g:ale_c_parse_compile_commands = 1

" -- error symbol
let g:ale_sign_error = '‼'

" -- warning symbol
let g:ale_sign_warning = '⁉'

" -- highlight
highlight ALEWarning ctermbg=DarkMagenta

" -- error navigation
"nmap <silent> <Plug>(ale_previous_wrap)
nmap <silent><Leader>5 <Plug>(ale_next_wrap)

" -- local list
let g:ale_set_loclist = 0

" -- quick fix
let g:ale_set_quickfix = 1

" set ALE up with clang-tidy
let g:ale_linters = {
\   'cpp': ['clangtidy'],
\   'c': ['clangtidy'],
\}
let g:ale_fixers={
\   'cpp': ['clang-format'],
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}
let g:ale_cpp_clangtidy_checks = []
let g:ale_cpp_clangtidy_executable = 'clang-tidy'
let g:ale_c_parse_compile_commands=1
let g:ale_cpp_clangtidy_extra_options = ''
let g:ale_cpp_clangtidy_options = ''
let g:ale_set_balloons=1
let g:ale_linters_explicit=1
let g:airline#extensions#ale#enabled=1

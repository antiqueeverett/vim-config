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

" -- config local list
let g:ale_set_loclist = 0

" -- config quick fix
let g:ale_set_quickfix = 1

" -- config clang-tidy
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

" -- config messages
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" -- airline + ale
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
let airline#extensions#ale#show_line_numbers = 1
let airline#extensions#ale#open_lnum_symbol = '(L'
let airline#extensions#ale#close_lnum_symbol = ')'

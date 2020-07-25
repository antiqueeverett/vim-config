" always show sign column | false
let g:ale_sign_column_always = 0

" info, error, and warning signs
let g:ale_sign_info = ''
let g:ale_sign_error = '✖︎✖︎'
let g:ale_sign_style_error = '✖︎✖︎'
let g:ale_sign_warning = ''
let g:ale_sign_style_warning = ''

" info, error, and warning messages (with vim airline)
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_format = '[%severity%] [%linter%] %s'

" CXX ---------------------------------------------------------
" fetch flags from CMake: set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
let g:ale_c_parse_compile_commands = 1
let g:ale_linters = {'c': ['clangtidy', 'gcc'], 'cpp': ['clangtidy', 'gcc']}

" navigate gutter warnings and errors
nmap <silent><Leader>0 <Plug>(ale_next_wrap)

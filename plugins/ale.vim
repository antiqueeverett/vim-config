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

" ref <https://github.com/dense-analysis/ale/blob/master/doc/ale-cpp.txt>
let g:ale_sign_column_always=0
let g:ale_set_loclist=1
let g:ale_set_quickfix=1
let g:ale_set_balloons=1
let g:ale_set_highlights=1

let g:ale_sign_info=''
let g:ale_sign_error=''
let g:ale_sign_style_error=''
let g:ale_sign_warning=''
let g:ale_sign_style_warning=''
let g:ale_echo_msg_error_str='Error'
let g:ale_echo_msg_warning_str='Warning'
let g:ale_echo_msg_format='[%severity%] [%linter%] %s'

" CXX CAVEAT:
" In CMakeLists.text, put set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
let g:ale_c_parse_compile_commands=1
let g:ale_cpp_clangtidy_executable = 'clang-tidy'
let g:ale_cpp_clangtidy_options = '-Wall -std=c++14 -x c++'
let g:ale_linters={'c': ['clangtidy'], 'cpp': ['clangtidy']}
let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'], 'cpp':  [ 'clangtidy']}
let g:ale_cpp_clangtidy_checks = ['-*', 'readability-*', 'modernize-*', 'clang-analyzer-*', 'performance-*']

" SHELL:
let g:ale_sh_shellcheck_options='-x'

nmap <silent><Leader>5 <Plug>(ale_next_wrap)


" dont always show sign column
let g:ale_sign_column_always=0

" info, error, and warning signs
let g:ale_sign_info=''
let g:ale_sign_error=''
let g:ale_sign_style_error=''
let g:ale_sign_warning=''
let g:ale_sign_style_warning=''

" info, error, and warning message format
let g:ale_echo_msg_error_str='Error'
let g:ale_echo_msg_warning_str='Warning'
let g:ale_echo_msg_format='[%severity%] [%linter%] %s'

" CXX ---------------------------------------------------------
" define lineters
let g:ale_linters={'c': ['clangtidy', 'gcc'], 'cpp': ['clangtidy', 'gcc']}

" fetch flags from CMake
let g:ale_c_parse_compile_commands=1
" CAVEAT: in CMakeLists.text use >> set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

"setup clang executable
let g:ale_cpp_clang_executable='clang++'
let g:ale_cpp_clang_options='-std=c++14 -Werror'

"setup clang tidy
let g:ale_cpp_clangtidy_executable='clang-tidy'
let g:ale_cpp_clangtidy_checks=['-*', 'modernize-use-override', '-fix']
let g:ale_cpp_clangtidy_options='-*, clang-analyzer-*'


" navigate gutter warnings and errors
nmap <silent><Leader>5 <Plug>(ale_next_wrap)

" SHELL -------------------------------------------------------
let g:ale_sh_shellcheck_options = '-x'

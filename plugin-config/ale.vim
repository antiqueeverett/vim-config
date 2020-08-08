" ref <https://github.com/dense-analysis/ale/blob/master/doc/ale-cpp.txt>
let g:ale_sign_column_always=0
let g:ale_set_loclist=1
let g:ale_set_quickfix=1
let g:ale_set_balloons=1

let g:ale_sign_info=''
let g:ale_sign_error=''
let g:ale_sign_style_error=''
let g:ale_sign_warning=''
let g:ale_sign_style_warning=''
let g:ale_echo_msg_error_str='Error'
let g:ale_echo_msg_warning_str='Warning'
let g:ale_echo_msg_format='[%severity%] [%linter%] %s'
let g:ycm_autoclose_preview_window_after_completion = 1

autocmd FileType zsh let g:ale_sh_shell_default_shell='zsh'

" LINTERS:
let g:ale_linters={
            \'c': ['clangtidy'],
            \'cpp': ['clangtidy']}

" FIXERS:
let g:ale_fixers={
            \'cpp':  [ 'clangtidy'],
            \'*': ['remove_trailing_lines', 'trim_whitespace']}

" CMAKE:
let g:ale_cmake_cmakelint_executable='cmakelint'
let g:ale_cmake_cmakelint_options=''
let g:ale_cmake_cmakeformat_executable='cmake-format'
let g:ale_cmake_cmakeformat_options=''

" CXX:
" -- CAVEAT: in CMakeLists.text, put set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
let g:ale_c_parse_compile_commands=1
let g:ale_cpp_clangtidy_executable='clang-tidy'
let g:ale_cpp_clangtidy_options='-Wall -std=c++14 -x c++'
let g:ale_cpp_clangtidy_checks=[
            \'-*',
            \'readability-*',
            \'performance-*',
            \'clang-analyzer-*']

" SHELL:
let g:ale_sh_bashate_executable = ''
let g:ale_sh_bashate_options = ''
let g:ale_sh_language_server_executable = ''
let g:ale_sh_shellcheck_executable='shellcheck'
"let g:ale_sh_shellcheck_options='-a -x -C=always -enable=all –shell=shell –severity=style'
let g:ale_sh_shellcheck_options='-a -x'
let g:ale_sh_shellcheck_change_directory=1
let g:ale_sh_shellcheck_dialect='auto'

" VIM:
" -- vim-language-server
let g:ale_vim_vimls_use_global=1
let g:ale_vim_vimls_config={
            \'initializationOptions': {
            \
            \    'iskeyword': '@,48-57,_,192-255,-#',
            \    'vimruntime': '',
            \    'runtimepath': '',
            \    'diagnostic': {'enable': v:true},
            \
            \    'indexes': {
            \        'runtimepath': v:true,
            \        'gap': 100,
            \        'count': 3,
            \        'projectRootPatterns' : ['strange-root-pattern', '.git', 'autoload', 'plugin']
            \    },
            \
            \    'suggest': {
            \      'fromVimruntime': v:true,
            \      'fromRuntimepath': v:false
            \    },
            \
            \    'filetypes': [ 'vim' ]}
            \}

" -- vint
let g:ale_vim_vint_executable='vint'
let g:ale_vim_vint_show_style_issues=1

" HIGHLIGHTS:
let g:ale_set_signs=1
let g:ale_set_highlights=1
let g:ale_change_sign_column_color=1

highlight ALESignColumnWithErrors    guibg=#1d2021 guifg=NONE
highlight ALESignColumnWithoutErrors guibg=#1d2021 guifg=NONE

highlight ALEWarning                 gui=underline guifg=#d65d0e
highlight ALEWarningSign             guibg=#1d2021 guifg=#d65d0e
highlight ALEWarningLine             guibg=#121212 guifg=NONE
highlight ALEWarningSignLineNr       guibg=#d65d0d guifg=#d65d0e

highlight ALEError                   gui=underline guifg=#cc241d
highlight ALEErrorSign               guibg=#1d2021 guifg=#cc241d
highlight ALEErrorLine               guibg=#282828 guifg=NONE
highlight ALEErrorSignLineNr         guibg=#cc241d guifg=#cc241d

highlight ALEInfo                    gui=underline guifg=#d79921
highlight ALEInfoSign                guibg=#1d2021 guifg=#d79921
highlight ALEInfoLine                guibg=#282828 guifg=NONE
highlight ALEInfoSignLineNr          guibg=#d79921 guifg=#d79921

nmap <silent><Leader>5 <Plug>(ale_next_wrap)

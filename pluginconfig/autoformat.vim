let g:python3_host_prog='/usr/local/bin/python3'
let g:formatdef_zsh='"shfmt"'
let g:formatters_zsh=['zsh']

let g:formatdef_cmake_format='"cmake-format -i --tab-size ".shiftwidth()." ".(&textwidth ? "--line-width=".&textwidth : "")'
let g:formatters_cmake=['cmake_format']

nnoremap <Leader>i :Autoformat<CR>

" for troubleshooting
let g:autoformat_verbosemode=0

let g:gitgutter_sign_added = 'ﰠ'
let g:gitgutter_sign_modified = '狀'
let g:gitgutter_sign_removed = 'ﰡ'
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed = '識'

let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0

highlight GitGutterAdd    guifg=#b8bb26 ctermfg=2
highlight GitGutterChange guifg=#076678 ctermfg=3
highlight GitGutterDelete guifg=#9d0006 ctermfg=1
highlight GitGutterChangeDelete guifg=#076678 ctermfg=1

nnoremap <silent><Leader>gg :GitGutterSignsEnable<CR>

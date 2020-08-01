nnoremap <silent><Leader>gg :GitGutterBufferToggle<CR>

let g:gitgutter_sign_added = 'ﰠ'
let g:gitgutter_sign_modified = '狀'
let g:gitgutter_sign_removed = 'ﰡ'
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed = '識'

let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

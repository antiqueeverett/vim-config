
" https://jonasdevlieghere.com/a-better-youcompleteme-config/
"
" To have semantic completion for C-family languages, you need tell the compiler
" how to process your files. Out of the box, YCM requires a per-project
" configuration file .ycm_extra_conf.py in the root of our project.
" Fortunately however, YCM supports you to define a global configuration file.
let g:ycm_global_ycm_extra_conf = '~/.vim/youcompleteme/.ycm_extra_conf.py'

nnoremap <silent><Leader>2df  :YcmCompleter GoToDefinition<CR>
nnoremap <silent><Leader>2dc  :YcmCompleter GoToDeclaration<CR>
nnoremap <silent><Leader>2inc  :YcmCompleter GoToInclude<CR>
nnoremap <silent><Leader>2imp  :YcmCompleter GoToImplementation<CR>
nnoremap <silent><Leader>2ref  :YcmCompleter GoToReferences<CR>

let g:ycm_filetype_blacklist = {
      \ 'markdown': 1,
      \ 'text': 1,
      \ 'mail': 1
      \}

let g:ycm_complete_in_strings = 1
let g:ycm_disable_signature_help = 1

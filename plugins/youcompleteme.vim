" https://jonasdevlieghere.com/a-better-youcompleteme-config/
"
" To have semantic completion for C-family languages, you need tell the compiler
" how to process your files. Out of the box, YCM requires a per-project
" configuration file .ycm_extra_conf.py in the root of our project.
" Fortunately however, YCM allows you to define a global configuration file.
let g:ycm_global_ycm_extra_conf = '~/.vim/youcompleteme/.ycm_extra_conf.py'

nnoremap <silent><Leader>1 :YcmCompleter GoToDeclaration<CR>
nnoremap <silent><Leader>2 :YcmCompleter GoToDefinition<CR>
nnoremap <silent><Leader>3 :YcmCompleter GoToReferences<CR>
nnoremap <silent><Leader>4 :YcmCompleter GoToImplementation<CR>
nnoremap <silent><Leader>5 :YcmCompleter GoToInclude<CR>

let g:ycm_filetype_blacklist = {
      \ 'markdown': 1,
      \ 'text': 1,
      \ 'mail': 1
      \}

" completion menu when inside strings | true
let g:ycm_complete_in_strings = 1

" When using YCM with ALE, both issue diagnostics.
" YCM diagnostics are disabled here to default to ALE diagnostics.
let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 0

" https://jonasdevlieghere.com/a-better-youcompleteme-config/
"
" To have semantic completion for C-family languages, you need tell the compiler
" how to process your files. Out of the box, YCM requires a per-project
" configuration file .ycm_extra_conf.py in the root of our project.
" Fortunately however, YCM allows you to define a global configuration file.
let g:ycm_global_ycm_extra_conf = "$HOME/dotfiles/vim/pluginconfig/.ycm_extra_conf.py"

nnoremap <silent><Leader>2 :YcmCompleter GoToDeclaration<CR>
nnoremap <silent><Leader>3 :YcmCompleter GoToDefinition<CR>
nnoremap <silent><Leader>4 :YcmCompleter GoToImplementation<CR>
"nnoremap <silent><Leader>7 :YcmCompleter GoToReferences<CR>
"nnoremap <silent><Leader>8 :YcmCompleter GoToInclude<CR>

let g:ycm_filetype_blacklist = {
            \ 'mail': 1
            \}

" completion rules
let g:ycm_complete_in_strings=1
let g:ycm_complete_in_comments=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_identifiers_from_comments_and_strings=1

" -- let g:ycm_semantic_triggers = {'haskell' : ['.']}

" USING YCM WITH ALE:
" YCM diagnostics are disabled in order to default to ALE diagnostics.
let g:ycm_show_diagnostics_ui=0
let g:ycm_echo_current_diagnostic=0
let g:ycm_enable_diagnostic_signs=0
let g:ycm_enable_diagnostic_highlighting=0
let g:ycm_min_num_of_chars_for_completion=3
let g:ycm_key_list_select_completion=['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-k>', '<C-p>', '<Up>']

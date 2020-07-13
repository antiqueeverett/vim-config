" -- 1) the function (executing vim-fugitive Gwrite and Gcommit -m)
function! AntiqueGreaterGitCommit(...)
    execute ":Gwrite"
    silent execute ":Gcommit -m \"" . join(a:000) . "\""
endfunction

" -- 2) linking to command
command! -nargs=* GreaterGitCommit :call AntiqueGreaterGitCommit(<f-args>)

" -- 3) keybinding
nnoremap <Leader>gg  :GreaterGitCommit


" -- 1) the function (executing vim-fugitive Gwrite, Gcommit -m, and Gpush)
function! AntiqueGreaterGitPush(...)
    execute ":Gwrite"
    silent execute ":Gcommit -m \"" . join(a:000) . "\""
    silent execute ":Gpush"
endfunction

" -- 2) linking to command
command! -nargs=* GreaterGitPush :call AntiqueGreaterGitPush(<f-args>)

" -- 3) keybinding
nnoremap <Leader>ggp  :GreaterGitPush

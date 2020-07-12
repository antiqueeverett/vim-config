" -- 1) the function (executing vim-fugitive Gwrite and Gcommit -m)
function! AntiqueGreaterGitCommit(...)
    execute ":Gwrite"
    execute ":Gcommit -m \"" . join(a:000) . "\""
endfunction

" -- 2) linking to command
command! -nargs=* GreaterGitCommit :call AntiqueGreaterGitCommit(<f-args>)

" -- 3) keybinding
nnoremap <Leader>gg  :GreaterGitCommit

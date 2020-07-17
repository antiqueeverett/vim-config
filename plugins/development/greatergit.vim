function! CommitFunction(...)
    execute ":Gwrite"
    silent execute ":Gcommit -m \"" . join(a:000) . "\""
endfunction
command! -nargs=* GreaterGitCommit :call CommitFunction(<f-args>)
nnoremap <Leader>gc  :GreaterGitCommit

function! PushFunction(...)
    execute ":Gwrite"
    silent execute ":Gcommit -m \"" . join(a:000) . "\""
    silent execute ":Gpush"
endfunction
command! -nargs=* GreaterGitPush :call PushFunction(<f-args>)
nnoremap <Leader>gp  :GreaterGitPush

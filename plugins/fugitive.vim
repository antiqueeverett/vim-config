function! CommitFunction(...)
    execute ":Gwrite"
    silent execute ":Gcommit -m \"" . join(a:000) . "\""
endfunction
command! -nargs=* Commit :call CommitFunction(<f-args>)
nnoremap <Leader>gc  :Commit

function! PushFunction(...)
    execute ":Gwrite"
    silent execute ":Gcommit -m \"" . join(a:000) . "\""
    silent execute ":Gpush"
endfunction
command! -nargs=* Push :call PushFunction(<f-args>)
nnoremap <Leader>gp  :Push

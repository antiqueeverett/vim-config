function! CommitFunction(...)
    execute ':Gwrite'
    silent execute ":Gcommit -m \"" . join(a:000) . "\""
endfunction
command! -nargs=* Msg :call CommitFunction(<f-args>)

function! PushFunction(...)
    execute ':Gwrite'
    silent execute ":Gcommit -m \"" . join(a:000) . "\""
    silent execute ':Gpush'
endfunction
command! -nargs=* Msgp :call PushFunction(<f-args>)


nnoremap <Leader>gc  :Msg
nnoremap <Leader>gp  :Msgp

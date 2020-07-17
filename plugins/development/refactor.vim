function! WordRefactorFunction(arg)
    execute ":%s/" . expand("<cword>") . "/" . a:arg . "/gc"
endfunction
command! -nargs=* Refactorword :call WordRefactorFunction(<f-args>)

function! WORDRefactorFunction(arg)
    execute ":%s/" . expand("<cWORD>") . "/" . a:arg . "/gc"
endfunction
command! -nargs=* RefactorWORD :call WORDRefactorFunction(<f-args>)

nnoremap <Leader>r  :Refactorword
nnoremap <Leader>R  :RefactorWORD



function! SurroundwordFunction(arg)
    execute "normal \<Plug>Ysurroundiw" . a:arg
endfunc
command! -nargs=* Surroundword :call SurroundwordFunction(<f-args>)

function! SurroundWORDFunction(arg)
    execute "normal \<Plug>YsurroundiW" . a:arg
endfunc
command! -nargs=* SurroundWORD :call SurroundWORDFunction(<f-args>)

function! SurroundLineFunction(arg)
    execute "normal \<Plug>Yssurround" . a:arg
endfunc
command! -nargs=* SurroundLine :call SurroundLineFunction(<f-args>)

" -- (s)-urround
nnoremap <Leader>s :Surroundword
nnoremap <Leader>S :SurroundWORD
nnoremap <Leader><Space> :SurroundLine


function! SurroundwordFunction(arg)
    execute "normal \<Plug>Ysurroundiw" . a:arg
endfunc
command! -nargs=* Siw :call SurroundwordFunction(<f-args>)

function! SurroundWORDFunction(arg)
    execute "normal \<Plug>YsurroundiW" . a:arg
endfunc
command! -nargs=* SiW :call SurroundWORDFunction(<f-args>)

function! SurroundLineFunction(arg)
    execute "normal \<Plug>Yssurround" . a:arg
endfunc
command! -nargs=* Sil :call SurroundLineFunction(<f-args>)

" -- (s)-urround
nnoremap <Leader>s :Siw
nnoremap <Leader>S :SiW
nnoremap <Leader>l :"Sil"


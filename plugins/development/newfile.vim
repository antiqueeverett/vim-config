function! AntiqueNewFile(arg)
    silent execute ":vnew " . a:arg
    silent execute ":write"
endfunc

command! -nargs=* NewFile :call AntiqueNewFile(<f-args>)
nnoremap <Leader>N  :NewFile

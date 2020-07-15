" -- define function
function! AntiqueNewFile(arg)
    silent execute ":vnew " . a:arg
    silent execute ":write"
endfunc

" -- link command
command! -nargs=* NewFile :call AntiqueNewFile(<f-args>)

" -- keybind
nnoremap <Leader>n  :NewFile

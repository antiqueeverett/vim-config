" create new directory
function! MkDirFunction(arg)
    silent execute '! mkdir -p ' .  a:arg
    execute 'call ConfigVimTerm()'
    execute 'vert term tree'
endfunc
command! -nargs=* MkDir :call MkDirFunction(<f-args>)

" delete directory
function! RmDirFunction(arg)
    silent execute '! rm -rf ' .  a:arg
    execute 'call ConfigVimTerm()'
    execute 'vert term tree'
endfunc
command! -nargs=* RmDir :call RmDirFunction(<f-args>)

nnoremap <Leader>nd :MkDir
nnoremap <Leader>dd :RmDir
"nnoremap <Leader>nd :MvDir

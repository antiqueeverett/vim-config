" create new file
function! MkFileFunction(arg)
    silent execute ':vnew ' . a:arg
    silent execute ':write'
endfunc
command! -nargs=* MkFile :call MkFileFunction(<f-args>)

" delete file
function! RmFileFunction()
    silent execute '! rm -rf ' . bufname('%')
    execute 'call ConfigVimTerm()'
    execute 'vert term tree'
endfunc
command! -nargs=* RmFile :call RmFileFunction()

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

" map keys
nnoremap <Leader>nf :MkFile
"nnoremap <Leader>dd :MvFile
nnoremap <Leader>dd :RmFile

nnoremap <Leader>nd :MkDir
"nnoremap <Leader>nd :MvDir
nnoremap <Leader>dd :RmDir

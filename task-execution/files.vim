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

nnoremap <Leader>nf :MkFile
nnoremap <Leader>dd :RmFile
"nnoremap <Leader>dd :MvFile

" (M)-move current file (and buffer)
nnoremap <Leader>M :Rename

" (D)-elete file (and buffer)
nnoremap <Leader>df :Delete<CR>

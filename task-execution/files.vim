" files.vim : Helper functions for vim-local
"             file and directory operations.
" author: Everett
" created: 2020-08-13 12:48
" Github: https://github.com/antiqueeverett/


""
" MkFileFunction: Creates a new file on disk with
"                 a corresponding buffer on a vsplit.
function! MkFileFunction(arg)
    silent execute 'call Save()'
    silent execute 'vnew ' . a:arg
    silent execute 'write'
endfunc
command! -nargs=* MkFile :call MkFileFunction(<f-args>)


""
" RmFileFunction: Deletes the current buffer and
"                 corresponding file on disk.
" todo: to test !! not commissioned yet
" date: 2020-08-13 12:53
function! RmFileFunction()
    silent execute '! rm -rf ' . bufname('%')
endfunc
command! -nargs=* RmFile :call RmFileFunction()

nnoremap <Leader>nf :MkFile
nnoremap <Leader>dd :RmFile
"nnoremap <Leader>dd :MvFile

" [M]ove current file on disk and rename buffer
nnoremap <Leader>M :Rename

" [D]elete current buffer and file on disk
nnoremap <Leader>df :Delete<CR>

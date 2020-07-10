" -- toggling between number and relative number
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
nnoremap <silent> <Space> :call ToggleNumber()<CR>


" -- Gwrite and Gcommit in one go
function!  GitCommit(arg)
    execute ":Gwrite"
    execute ":Gcommit -m \"" . a:arg . "\""
endfunction
nnoremap <Leader>gg  :call GitCommit("

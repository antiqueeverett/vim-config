nnoremap <silent><C-F> :Goyo<CR>

function! ToggleGoyoLineNumber()
    if &relativenumber == 1 || &number == 1
        set norelativenumber
        set nonumber
    else
        set relativenumber
        set number
        set number relativenumber
    endif
endfunc

nnoremap <silent><C-N> :call ToggleGoyoLineNumber()<CR>

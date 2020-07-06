" -- ignoring git files for faster
if executable('rg')
    let g:rg_derive_root='true'
endif

" -- toggling between number and relative number
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

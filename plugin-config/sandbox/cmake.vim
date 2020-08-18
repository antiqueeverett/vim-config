function! CMakeFunction()
    if has('nvim')
        FloatermNew --height=0.8 --width=0.8 --wintype=floating --name=cmakewin cmake.sh
    else
        call Save()
        set termwinsize=0x86
        vert term cmake.sh
    endif
endfunction

command! -nargs=* CXXMake :call CMakeFunction(<f-args>)
nnoremap <silent><Leader>1  :CXXMake<CR>

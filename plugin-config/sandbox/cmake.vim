function! CMakeFunction()
    call Save()
    set termwinsize=0x86
    vert term cmake.sh
endfunction

command! -nargs=* CXXMake :call CMakeFunction(<f-args>)
nnoremap <silent><Leader>1  :CXXMake<CR>

function! CutFunction()
    execute "normal! yiw"
endfunction
command! -nargs=* Xut :call CutFunction(<f-args>)

function! PasteFunction()
    execute "normal! viw"
    execute "normal! P"
endfunction
command! -nargs=* Paste :call PasteFunction(<f-args>)

nnoremap <Leader>x  :Xut<CR>
nnoremap <Leader>p  :Paste<CR>




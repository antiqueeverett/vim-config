function! CutFunction()
    execute "normal! \"rdiw"
endfunction
command! -nargs=* Cut :call CutFunction(<f-args>)
nnoremap <Leader>x  :Cut<CR>

function! CUTFunction()
    execute "normal! \"rdiW"
endfunction
command! -nargs=* CUT :call CUTFunction(<f-args>)
nnoremap <Leader>X  :CUT<CR>

function! CopyFunction()
    execute "normal! \"ryiw"
endfunction
command! -nargs=* Copy :call CopyFunction(<f-args>)
nnoremap <Leader>c  :Copy<CR>

function! COPYFunction()
    execute "normal! \"ryiW"
endfunction
command! -nargs=* COPY :call COPYFunction(<f-args>)
nnoremap <Leader>C  :COPY<CR>

function! PasteFunction()
    execute "normal! \".viw"
    execute "normal! P"
endfunction
command! -nargs=* Paste :call PasteFunction(<f-args>)
nnoremap <Leader>p  :Paste<CR>

function! PASTEFunction()
    execute "normal! \".viW"
    execute "normal! P"
endfunction
command! -nargs=* PASTE :call PASTEFunction(<f-args>)
nnoremap <Leader>P  :PASTE<CR>

"test  test-string

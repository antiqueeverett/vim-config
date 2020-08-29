function! CutFunction()
    execute "normal! \"rdiw"
endfunction
command! -nargs=* Cut :call CutFunction(<f-args>)

function! CUTFunction()
    execute "normal! \"rdiW"
endfunction
command! -nargs=* CUT :call CUTFunction(<f-args>)

function! CopyFunction()
    execute "normal! \"ryiw"
endfunction
command! -nargs=* Copy :call CopyFunction(<f-args>)

function! COPYFunction()
    execute "normal! \"ryiW"
endfunction
command! -nargs=* COPY :call COPYFunction(<f-args>)

function! PasteFunction()
    execute "normal! \".viw"
    execute 'normal! P'
endfunction
command! -nargs=* Paste :call PasteFunction(<f-args>)

function! PASTEFunction()
    execute "normal! \".viW"
    execute 'normal! P'
endfunction
command! -nargs=* PASTE :call PASTEFunction(<f-args>)

nnoremap <Leader>x  :Cut<CR>
nnoremap <Leader>X  :CUT<CR>
nnoremap <Leader>c  :Copy<CR>
nnoremap <Leader>C  :COPY<CR>
nnoremap <Leader>p  :Paste<CR>
nnoremap <Leader>P  :PASTE<CR>

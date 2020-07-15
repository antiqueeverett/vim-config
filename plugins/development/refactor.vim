" -- define function
function! Antiquerefactor(arg)
    execute ":%s/" . expand("<cword>") . "/" . a:arg . "/gc"
endfunction

" -- link command
command! -nargs=* Refactorword :call Antiquerefactor(<f-args>)

" -- keybind
nnoremap <Leader>r  :Refactorword


" -- define function
function! AntiqueRefactor(arg)
    execute ":%s/" . expand("<cWORD>") . "/" . a:arg . "/gc"
endfunction

" -- link command
command! -nargs=* RefactorWORD :call AntiqueRefactor(<f-args>)

" -- keybind
nnoremap <Leader>R  :RefactorWORD



" " -- define function
" function! AntiqueRefactor(arg)
"     execute ":%s/" . expand("<cWORD>") . "/" . a:arg . "/gc"
" endfunction
"
" " -- link command
" command! -nargs=* RefactorWORD :call AntiqueRefactor(<f-args>)
"
" " -- keybind
" nnoremap <Leader>riw  :RefactorWORD

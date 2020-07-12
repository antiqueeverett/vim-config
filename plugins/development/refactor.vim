" -- 1) the function (refactoring a word, file-wide)
function! Antiquerefactor(arg)
    execute ":%s/" . expand("<cword>") . "/" . a:arg . "/gc"
endfunction

" -- 2) linking to command
command! -nargs=* Refactorword :call Antiquerefactor(<f-args>)

" -- 3) keybinding
nnoremap <Leader>r  :Refactorword


" -- 1) the function (refactoring a WORD, file-wide)
function! AntiqueRefactor(arg)
    execute ":%s/" . expand("<cWORD>") . "/" . a:arg . "/gc"
endfunction

" -- 2) linking to a command
command! -nargs=* RefactorWORD :call AntiqueRefactor(<f-args>)

" -- 3) keybinding
nnoremap <Leader>R  :RefactorWORD

" TODO: plugin linking?
"command! -nargs=* HookRefactorWORD :call AntiqueRefactor(<f-args>)
"nnoremap <Leader>R <Plug>RefactorWORD :execute 'HookRefactorWORD'

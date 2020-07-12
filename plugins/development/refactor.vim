" DEFINING AND USING A COMMAND:
" -- 1) defining a function
function! Antiquerefactor(arg)
    execute ":%s/" . expand("<cword>") . "/" . a:arg . "/gc"
endfunction

" -- 2) linking the function to a command
command! -nargs=* Refactorword :call Antiquerefactor(<f-args>)

" -- 3) keybinding command
nnoremap <Leader>r  :Refactorword



" DEFINING AND USING A PLUGIN:
" -- 1) defining a function
function! AntiqueRefactor(arg)
    execute ":%s/" . expand("<cWORD>") . "/" . a:arg . "/gc"
endfunction

" -- 2) linking the function to a command
command! -nargs=* RefactorWORD :call AntiqueRefactor(<f-args>)
"command! -nargs=* HookRefactorWORD :call AntiqueRefactor(<f-args>)  <-todo

" -- 3) keybinding plug-link
nnoremap <Leader>R  :RefactorWORD
"nnoremap <Leader>R <Plug>RefactorWORD :execute 'HookRefactorWORD'  <-todo

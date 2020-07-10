"       let g:my_var_a = "melon"
"       let g:my_var_b = "apple"
"
"       " Define the main function
"       function! MyFunc(myarg1, myarg2)
"           echom "Arguments: " . a:myarg1 . ", " . a:myarg2
"       endfunction
"
"       " Link the function to a command
"       command! -nargs=* HookMyFunc call MyFunc(<f-args>)
"
"       " Link the command to a plug
"       nnoremap <unique> <Plug>MyHook :execute 'HookMyFunc ' . g:my_var_a . ' ' . g:my_var_b<CR>
"

" -- the function
function! AntiqueRefactor(arg)
    execute ":%s/" . expand("<cword>") . "/" . a:arg . "/gc"
endfunction


" -- binding plugin to key
nnoremap <Leader>r  :call AntiqueRefactor("

function! SetMyShell()
    if has('macunix')
        set shell=/bin/zsh
    elseif has('unix')
        set shell=/usr/bin/zsh
    endif
endfunc

function! CMakeFunction()
    execute 'call SetMyShell()'
    execute 'set termwinsize=0x86'
    execute 'vert term cmake.sh'
endfunction

command! -nargs=* CXXMake :call CMakeFunction(<f-args>)
nnoremap <silent><Leader>1  :CXXMake<CR>

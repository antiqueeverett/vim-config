function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
        set number
        set number relativenumber
    endif
endfunc
nnoremap <silent><Leader>? :call ToggleNumber()<CR>

function! ShowBufferVars()
    echo '1. buffer number = ' . bufnr('%')
    echo '2. buffer buftype = ' . &buftype
    echo '3. buffer nume = ' . bufname('%')
    echo '4. buffer modifiable = ' . &modifiable
    echo '5. buffer file type = ' . &filetype
endfunc

" function CheckBufferTypeOnExit()
"     execute "update"
" endif
" endfunction

function! PullUpFZF()
    if &modifiable!=#'1' || &buftype!=#'' || &filetype ==#''
        execute (bufnr('%') . 'bd!')
    elseif &modifiable==#'1' && &buftype==#'' && &filetype !=#''
        execute 'update'
    endif
    execute 'FZF $HOME/Repositories'
endfunction

function! ExitBuffer()
    if &modifiable!=#'1' || &buftype!=#'' || &filetype ==#''
        execute (bufnr('%') . 'bd!')
    elseif &modifiable==#'1' && &buftype==#'' && &filetype !=#''
        execute 'update'
        execute 'bd'
    endif
    if &buftype==#'' && bufname('%')==#'' && &modifiable==#'1'
        silent execute '!clear'
        silent execute 'q!'
    endif
endfunction

function! SwitchBuffer()
    if &modifiable!=#'1' || &buftype!=#'' || &filetype ==#'' | execute (bufnr('%') . 'bn!') | endif
    if &modifiable==#'1' && &buftype==#'' && &filetype !=#''
        execute 'update'
        execute 'bn'
    endif
endfunction

function! OpenTerminal()
    execute 'call SetMyShell()'
    execute 'set termwinsize=0x86'
    execute 'vert term'
endfunction

nnoremap <silent><C-O> :call OpenTerminal()<CR>
nnoremap <leader>$ :source $HOME/.vimrc<CR>
nnoremap <silent><Leader>' :call PullUpFZF()<CR>
nnoremap <silent><Leader>q :call ExitBuffer()<CR>
nnoremap <silent><Leader>d :call ExitBuffer()<CR>
nnoremap <silent><leader><Tab> :call SwitchBuffer()<CR>

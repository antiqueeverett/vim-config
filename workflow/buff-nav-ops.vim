" show current buffer vars : quick inspection of current buffer
function! ShowBufferVars()
    echo '1. buffer number = ' . bufnr('%')
    echo '2. buffer buftype = ' . &buftype
    echo '3. buffer nume = ' . bufname('%')
    echo '4. buffer modifiable = ' . &modifiable
    echo '5. buffer file type = ' . &filetype
endfunction

" check if current buffer is scratch buffer
function! IsScratch()
    if &modifiable!=#'1' || &buftype!=#'' || &filetype ==#''
        return v:true
    elseif &modifiable==#'1' && &buftype==#'' && &filetype !=#''
        return v:false
    endif
endfunction

" check if loaded buffer is No Name buffer
function! IsNoName()
    if &buftype==#'' && bufname('%')==#'' && &modifiable==#'1'
        return v:true
    else
        return v:false
    endif
endfunction

" Iff !Scratch, update current buffer
function! UpdateBuffer()
    if IsScratch()
        execute (bufnr('%') . 'bd!')
    else
        execute 'update'
    endif
endfunction

" fuzzy find from any buffer
function! FuzzyFind()
    execute 'call UpdateBuffer()'
    execute 'FZF $HOME/Repositories'
endfunction

" vsplit into fuzzy search
function! VSplit()
    vnew
    execute 'FZF $HOME/Repositories'
endfunction

" go to next buffer
function! NextBuffer()
    execute 'call UpdateBuffer()'
    execute 'bn'
endfunction

" go to previous buffer
function! PreviousBuffer()
    execute 'call UpdateBuffer()'
    execute 'bN'
endfunction

" after buffer delete, quit if no name buffer is loaded
function! QuitVim()
    if IsNoName()
        silent execute '!clear'
        silent execute 'q!'
    endif
endfunction

" exit current buffer and quit vim appropriately
function! ExitBuffer()
    if IsScratch()
        execute (bufnr('%') . 'bd!')
        execute 'call QuitVim()'
    else
        execute 'update'
        execute 'bd'
        execute 'call QuitVim()'
    endif
endfunction

nnoremap <silent><Leader>\ :call VSplit()<CR>
nnoremap <silent><Leader>' :call FuzzyFind()<CR>
nnoremap <silent><Leader>db :call ExitBuffer()<CR>
nnoremap <silent><leader>` :call PreviousBuffer()<CR>
nnoremap <silent><leader><Tab> :call NextBuffer()<CR>

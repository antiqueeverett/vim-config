" navigation.vim : Functions to help with buffer navigation.
" author: Everett
" created: 2020-08-13 10:45
" Github: https://github.com/antiqueeverett/


""
" BufferPreFuzzyFind: Iff current buffer is workable save work. Otherwise,
"                     iff the current buffer is scratch, undo all changes
"                     that may have snuck in (fzf trigger fails otherwise)
function! BufferPreFuzzyFind()
    if &modifiable == 1
        if IsNoName() || !IsWorkingBuffer()
            u0
        elseif IsWorkingBuffer()
            execute 'call Save()'
        endif
    endif
endfunction

""
" Fuzzy Find: Helps update a buffer before pulling up fzf.
"             Convenient in cases where fzf is pulled up
"             before saving.
function! FuzzyFind()
    execute 'call BufferPreFuzzyFind()'
    execute 'FZF $HOME/Repositories'
endfunction


""
" VSplit: Opens up a new vertical-split buffer and pulls up.
"         fzf.
function! VSplit()
    execute 'call BufferPreFuzzyFind()'
    vnew
    execute 'FZF $HOME/Repositories'
endfunction


""
" NextBuffer: Forward navigation on all currently-open buffers.
function! NextBuffer()
    execute 'call Save()'
    execute 'bn'
endfunction


""
" PreviousBuffer: Reverse navigation on all currently-open
"                 buffers.
function! PreviousBuffer()
    execute 'call Save()'
    execute 'bN'
endfunction


""
" CloseBuffer: Exit current buffer (and vim where appropriate)
"              more intuitively.
function! CloseBuffer()
    if IsWorkingBuffer()
        execute 'call Save()'
        execute 'bd'
    else
        execute 'bd!'
    endif

    if IsNoName()
        execute 'call ExitVim()'
    endif
endfunction


" nnoremap <silent><Leader>q :q!<CR>
" nnoremap <silent><Leader>\ :call VSplit()<CR>
" nnoremap <silent><Leader>' :call FuzzyFind()<CR>
" nnoremap <silent><Leader>d :call CloseBuffer()<CR>
" nnoremap <silent><S-Tab> :call PreviousBuffer()<CR>
" nnoremap <silent><leader><Tab> :call NextBuffer()<CR>

nnoremap <Leader>q :q!<CR>
nnoremap <Leader>\ :vnew<Bar>FZF $HOME/Repositories<CR>
nnoremap <Leader>' :FZF $HOME/Repositories<CR>
nnoremap <Leader>d :write<Bar>bd<CR>
nnoremap <S-Tab> :write<Bar>bN<CR>
nnoremap <leader><Tab> :write<Bar>bn<CR>

" navigation.vim : Functions to help with buffer navigation.
" author: Everett
" created: 2020-08-13 10:45
" Github: https://github.com/antiqueeverett/


""
" Fuzzy Find: Helps update a buffer before pulling up fzf.
"             Convenient in cases where fzf is pulled up
"             before saving.
function! FuzzyFind()
    execute 'call Save()'
    execute 'FZF $HOME/Repositories'
endfunction


""
" VSplit: Opens up a new vertical-split buffer and pulls up.
"         fzf.
function! VSplit()
    execute 'call Save()'
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


nnoremap <silent><Leader>dB :qa!<CR>
nnoremap <silent><Leader>\ :call VSplit()<CR>
nnoremap <silent><Leader>' :call FuzzyFind()<CR>
nnoremap <silent><Leader>db :call CloseBuffer()<CR>
nnoremap <silent><leader>` :call PreviousBuffer()<CR>
nnoremap <silent><leader><Tab> :call NextBuffer()<CR>

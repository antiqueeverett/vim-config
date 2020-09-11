" AUTO SAVING:

""
" BufferPeek:
"   Displays attributes of current buffer.
function! BufferPeek()
    echo '1. buffer number = ' . bufnr('%')
    echo '2. buffer buftype = ' . &buftype
    echo '3. buffer name = ' . bufname('%')
    echo '4. buffer modifiable = ' . &modifiable
    echo '5. buffer file type = ' . &filetype
endfunction

""
" IsModifiable:
"     Checks if current buffer is modifiable.
function! IsModifiable()
    if &modifiable!=#'1' || &buftype!=#'' || &filetype ==#''
        return v:false
    elseif &modifiable==#'1' && &buftype==#'' && &filetype !=#''
        return v:true
    endif
endfunction

""
" IsNERDTree:
"     Checks if current buffer is a NERDTREE buffer.
function! IsNERDTree()
    if &modifiable==#'0' &&  &filetype ==#'nerdtree'
        return v:true
    else
        return v:false
    endif
endfunction

""
" IsNoName:
"   Checks if current buffer is a No name buffer.
function! IsNoName()
    if &buftype==#'' && bufname('%')==#'' && &modifiable==#'1'
        return v:true
    else
        return v:false
    endif
endfunction

""
" IsWorkingBuffer:
"   Checks if current buffer is a working buffer.
function! IsWorkingBuffer()
    if IsModifiable() && !IsNERDTree()
        if !IsNoName()
            return v:true
        endif
    else
        return v:false
    endif
endfunction

""
" Autosave:
"     Runs autosave on working buffers, where
"     'work buffer' refers to *any* buffer
"     corresponding to a file on disk.
function! Autosave()
    if IsWorkingBuffer()
        execute 'write'
    endif
endfunction

augroup auto_save
    autocmd!
    autocmd InsertLeave,
                \CursorHold,CursorMoved,
                \FocusGained,FocusLost,
                \BufWinLeave,BufLeave,
                \VimLeavePre
                \ * silent execute 'call Autosave()'
augroup END

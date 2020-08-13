" helpers.vim: Helper functions for;
"              * files.vim
"              * terminal.vim
"              * navigation.vim
"              * directories.vim
"
" author: Everett
" created: 2020-08-13 11:22
" Github: https://github.com/antiqueeverett/


""
" BufferPeek: Echos feedback on all buffer variables.
function! BufferPeek()
    echo '1. buffer number = ' . bufnr('%')
    echo '2. buffer buftype = ' . &buftype
    echo '3. buffer nume = ' . bufname('%')
    echo '4. buffer modifiable = ' . &modifiable
    echo '5. buffer file type = ' . &filetype
endfunction


""
" IsScratch: Checks if current buffer is a scratch buffer.
function! IsScratch()
    if &modifiable!=#'1' || &buftype!=#'' || &filetype ==#''
        return v:true
    elseif &modifiable==#'1' && &buftype==#'' && &filetype !=#''
        return v:false
    endif
endfunction


""
" IsNoName: Checks if current buffer is a no name buffer.
function! IsNoName()
    if &buftype==#'' && bufname('%')==#'' && &modifiable==#'1'
        return v:true
    else
        return v:false
    endif
endfunction


""
" IsWorkingBuffer: Checks if current buffer is a working buffer.
function! IsWorkingBuffer()
    if !IsScratch() && !IsNoName()
        return v:true
    else
        return v:false
    endif
endfunction


""
" Discard: Close current buffer
function! Discard()
    execute (bufnr('%') . 'bd!')
endfunction


""
" Save: Save current buffer
function! Save()
    if IsWorkingBuffer()
        execute 'write'
    else
        execute 'call Discard'
        " todo: could there be a more
        " gracious approach?
        " date: 2020-08-13 12:21
    endif
endfunction

""
" IsLastWindow:
function! IsLastWindow()
    if winnr() == winnr('$')
        return v:true
    else
        return v:false
    endif
endfunction



""
" IsLastBuffer: Verifies current buffer is last buffer
function! IsLastBuffer()
    let l:buffer_count = 0
    for i in range(0, bufnr('$'))
        if buflisted(i)
            let l:buffer_count = l:buffer_count + 1
        endif
    endfor

    if l:buffer_count == 1
        return v:true
    else
        return v:false
    endif
endfunction


""
" ExitVim: Exits vim iff current buffer is last buffer and
"          not a working buffer.
" todo: test!!!
" date: 2020-08-13 11:56
function! ExitVim()
    if IsLastBuffer()
        if IsLastWindow()
            silent execute '!clear'
            silent execute 'q!'
        else
            close!
        endif
    endif
endfunction

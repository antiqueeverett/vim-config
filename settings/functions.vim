" toggle number and relative number
function! ToggleLineNumbersStyle()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
        set number
        set number relativenumber
    endif
endfunc

" toggle line numbers
function! ToggleLineNumbers()
    if &relativenumber == 1 || &number == 1
        set norelativenumber
        set nonumber
    else
        set relativenumber
        set number
        set number relativenumber
    endif
endfunc

" show current buffer vars
function! ShowBufferVars()
    echo '1. buffer number = ' . bufnr('%')
    echo '2. buffer buftype = ' . &buftype
    echo '3. buffer nume = ' . bufname('%')
    echo '4. buffer modifiable = ' . &modifiable
    echo '5. buffer file type = ' . &filetype
endfunc

" pull-up fzf
function! PullUpFZF()
    if &modifiable!=#'1' || &buftype!=#'' || &filetype ==#''
        execute (bufnr('%') . 'bd!')
    elseif &modifiable==#'1' && &buftype==#'' && &filetype !=#''
        execute 'update'
    endif
    execute 'FZF $HOME/Repositories'
endfunction

" exit current buffer appropriately
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

" help update on buffer switch
function! UpdateCurrentBuffer()
    if &modifiable!=#'1' || &buftype!=#'' || &filetype ==#'' | execute (bufnr('%') . 'bn!') | endif
    if &modifiable==#'1' && &buftype==#'' && &filetype !=#''
        execute 'update'
    endif
endfunction

" open terminal window (size 0x86 cols)
function! OpenTerminal()
    execute 'set termwinsize=0x86'
    execute 'vert term'
endfunction

" pull-up fzf in new vertical split
function! OpenVSplitFZF()
    vnew
    execute 'FZF $HOME/Repositories'
endfunction

" create new file
function! MkfileFunction(arg)
    silent execute ':vnew ' . a:arg
    silent execute ':write'
endfunc
command! -nargs=* Mkfile :call MkfileFunction(<f-args>)

" create new directory
function! MkdirFunction(arg)
    silent execute '! mkdir -p ' .  a:arg
    execute 'set termwinsize=0x40'
    execute 'vert term tree'
endfunc
command! -nargs=* Mkdir :call MkdirFunction(<f-args>)

" delete directory
function! RmdirFunction(arg)
    silent execute '! rm -rf ' .  a:arg
    execute 'set termwinsize=0x40'
    execute 'vert term tree'
endfunc
command! -nargs=* Rmdir :call RmdirFunction(<f-args>)

" function key maps
nnoremap <Leader>nf :Mkfile
nnoremap <Leader>nd :Mkdir
nnoremap <Leader>dd :Rmdir
nnoremap <silent><C-O> :call OpenTerminal()<CR>
nnoremap <silent><C-\> :call OpenVSplitFZF()<CR>
nnoremap <silent><Leader>' :call PullUpFZF()<CR>
nnoremap <silent><Leader>q :call ExitBuffer()<CR>
nnoremap <silent><Leader>db :call ExitBuffer()<CR>
nnoremap <silent><C-N> :call ToggleLineNumbers()<CR>
nnoremap <silent><Leader>? :call ToggleLineNumbersStyle()<CR>
nnoremap <silent><leader>` :call UpdateCurrentBuffer()<CR> :bp<CR>
nnoremap <silent><leader><Tab> :call UpdateCurrentBuffer()<CR> :bn<CR>

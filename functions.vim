" toggle number line style
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

" toggle line numbers on/off
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
function! FuzzySearch()
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

" update on buffer switch
function! UpdateCurrentBuffer()
    if &modifiable!=#'1' || &buftype!=#'' || &filetype ==#'' | execute (bufnr('%') . 'bn!') | endif
    if &modifiable==#'1' && &buftype==#'' && &filetype !=#''
        execute 'update'
    endif
endfunction

" config vim terminal
function! ConfigVimTerm()
    if has('macunix')
        set shell=/bin/zsh
    elseif has('unix')
        set shell=/usr/bin/zsh
    endif
    execute 'set termwinsize=0x86'
    let g:terminal_ansi_colors = [
                \'#282828',
                \'#cc241d',
                \'#98971a',
                \'#d79921',
                \'#458588',
                \'#b16286',
                \'#689d6a',
                \'#a89984',
                \'#928374',
                \'#fb4934',
                \'#b8bb26',
                \'#fabd2f',
                \'#83a598',
                \'#d3869b',
                \'#8ec07c',
                \'#ebdbb2']
endfunc

" open vim terminal
function! OpenTerminal()
    execute 'call ConfigVimTerm()'
    execute 'vert term'
endfunction

" vsplit into fuzzy search
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
    execute 'call ConfigVimTerm()'
    execute 'vert term tree'
endfunc
command! -nargs=* Mkdir :call MkdirFunction(<f-args>)

" delete directory
function! RmdirFunction(arg)
    silent execute '! rm -rf ' .  a:arg
    execute 'call ConfigVimTerm()'
    execute 'vert term tree'
endfunc
command! -nargs=* Rmdir :call RmdirFunction(<f-args>)

" map keys
nnoremap <Leader>nd :Mkdir
nnoremap <Leader>dd :Rmdir
nnoremap <Leader>nf :Mkfile
nnoremap <silent><C-O> :call OpenTerminal()<CR>
nnoremap <silent><Leader>db :call ExitBuffer()<CR>
nnoremap <silent><Leader>' :call FuzzySearch()<CR>
nnoremap <silent><C-N> :call ToggleLineNumbers()<CR>
nnoremap <silent><Leader>\ :call OpenVSplitFZF()<CR>
nnoremap <silent><Leader>? :call ToggleLineNumbersStyle()<CR>
nnoremap <silent><leader>` :call UpdateCurrentBuffer()<CR> :bp<CR>
nnoremap <silent><leader><Tab> :call UpdateCurrentBuffer()<CR> :bn<CR>

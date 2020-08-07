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

nnoremap <silent><C-O> :call OpenTerminal()<CR>

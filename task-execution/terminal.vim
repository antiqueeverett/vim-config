" using gruvbox color scheme
function! TermColors()
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

" set shell
function! TermShell()
    if has('macunix')
        set shell=/bin/zsh
    elseif has('unix')
        set shell=/usr/bin/zsh
    endif
endfunction

" open vim terminal
function! OpenTerminal()
    call TermShell()
    call TermColors()
    if has('nvim')
        FloatermNew --height=0.8 --width=0.8 --wintype=floating --name=cmakewin
    else
        execute 'vert term'
    endif
endfunction

nnoremap <silent><C-O> :call OpenTerminal()<CR>

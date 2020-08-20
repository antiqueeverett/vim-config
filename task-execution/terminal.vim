" use zsh
function! TermShell()
    if has('macunix')
        set shell=/bin/zsh
    elseif has('unix')
        set shell=/usr/bin/zsh
    endif
endfunction

" use gruvbox color palette
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


" config term
function! Configure()
    call Save()
    call TermShell()
    call TermColors()
endfunction


" open term
function! OpenTerminal()
    call Configure()
    if has('nvim')
        FloatermNew --height=0.8 --width=0.8 --wintype=floating --name=terminalwin
    else
        execute 'vert term'
    endif
endfunction


" open term and check email
function! Mail()
    call Configure()
    if has('nvim')
        FloatermNew --height=0.8 --width=0.8 --wintype=floating --name=emailwin neomutt
    else
        set termwinsize=0x86
        vert term neomutt
    endif
endfunction


" open term and run cmake
function! CMakeProject()
    call Configure()
    if has('nvim')
        FloatermNew --height=0.8 --width=0.8 --wintype=floating --name=cmakewin cmake.sh
    else
        set termwinsize=0x86
        vert term cmake.sh
    endif
endfunction


" open term and run cmake
function! CMakeTarget()
    call Configure()
    if has('nvim')
        FloatermNew --height=0.8 --width=0.8 --wintype=floating --name=cmakewin buildtarget.sh
    else
        set termwinsize=0x86
        vert term buildtarget.sh
    endif
endfunction

"nnoremap ` :call Mail()<CR>
nnoremap <silent><C-O> :call OpenTerminal()<CR>
nnoremap <silent><Leader>1 :call CMakeProject()<CR>
nnoremap <silent><Leader>B :call CMakeTarget()<CR>

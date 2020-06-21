" -- always showing status line
set laststatus=2


" -- 256 colors
set t_Co=256


" -- using fugitive status-line
set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P


" -- blinking cursor in Insert mode, and a blinking block in normal
if &term == 'xterm-256color' || &term == 'screen-256color'
    let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"
endif


" if exists('$TMUX')
"     let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"     let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
" endif


" -- AUTO COMMANDS:
" -- overriding theme background color to make terminal background persistent
augroup use_terminal_background
    autocmd!
    autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
augroup END


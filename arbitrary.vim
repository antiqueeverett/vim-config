" set zsh as vim shell
if has('macunix')
    set shell=/bin/zsh
elseif has('unix')
    set shell=/usr/bin/zsh
endif

" blink cursor with line (in insert) and block (in normal)
if &term ==# 'xterm-256color' || &term ==# 'screen-256color'
    let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"
endif


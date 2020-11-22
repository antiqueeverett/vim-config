let g:goyo_width=91
let g:goyo_height=winheight(0)


function! Focus()
    execute 'Goyo'
    if &number != 1
        execute 'call ToggleNumLine()'
    endif
endfunction

nnoremap <silent><C-F> :call Focus()<CR>

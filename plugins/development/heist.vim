" A GAME TO PRACTICE RELATIVE NUMBERS MOVEMENT

" helper: random number generator
" https://stackoverflow.com/questions/12737977/native-vim-random-number-script
function! RandInt(Low, High) abort
    let l:milisec = str2nr(matchstr(reltimestr(reltime()), '\v\.\zs\d+'))
    return l:milisec % (a:High - a:Low + 1) + a:Low
endfunction

function! AntiqueHeist()
    vnew
    let heist_buffer = bufnr('%')
    for i in range(1,57) | call append(line("."), "") | endfor

    let g:ln_num = "0"
    function! CriminalMasterMind() closure
        if g:ln_num == "0"
            let g:ln_num = RandInt(0, 55)
            silent execute "call setbufline(" . heist_buffer . ", " . g:ln_num .", 'Helsinki')"
        else
            if getline(g:ln_num) == ""
                call append(line("."), "")
                let g:ln_num = RandInt(0, 55)
                silent execute "call setbufline(" . heist_buffer . ", " . g:ln_num .", 'Helsinki')"
            endif
        endif
    endfunction

    call CriminalMasterMind()
    augroup monitor_movement
        autocmd! * <buffer>
        autocmd CursorMoved <buffer> call CriminalMasterMind()
    augroup END

endfunction

" -- linking to command
command! -nargs=* Heist :call AntiqueHeist(<f-args>)

" -- keybinding
nnoremap <silent><Leader>9  :Heist <CR>

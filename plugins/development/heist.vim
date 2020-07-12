" -- 1) the function (game to practice relative number)
function! AntiqueHeist()
    " -- adding a new temp buffer
    vnew

    " -- adding in 50 blank lines
    for i in range(1,50) | call append(line("."), "") | endfor

    " -- generating a random number
    ruby puts Random.rand(50)

    " -- generating a string [ buffer 2, line 25 ]
    call setbufline(2, 25, '____delete me____')
endfunction

" -- 2) linking to command
command! -nargs=* Heist :call AntiqueHeist(<f-args>)

" -- 3) keybinding (temp)
nnoremap <Leader>1  :Heist

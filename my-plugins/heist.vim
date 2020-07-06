function! MyPlug()
    " -- creating a new buffer
    "vnew
    normal! ggdG

    " -- adding in 50 blank lines
    for i in range(1,50) | call append(line("."), "") | endfor

    " -- generating a random number
    ruby puts Random.rand(50)

    " -- generating the text to delete
    call setbufline(2, 25, '____delete me____')

endfunction

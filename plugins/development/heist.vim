" ---------- A GAME TO PRACTICE RELATIVE NUMBERS MOVEMENT ----------"
function! AntiqueHeist()
    " -- create new buffer
    vnew

    " -- get buffer number
    let heist_buffer = bufnr('%')

    " -- add 50 empty lines to buffer
    for i in range(1,50) | call append(line("."), "") | endfor

    let g:ln_num = "0"

    function! CriminalMasterMind() closure
        if g:ln_num == "0"
            " -- save next :execute-output into variable
            redir => rnd_num

            " -- execute rnd number output
            execute"ruby puts Random.rand(57)"

            " -- redirect random number output to rnd_num
            redir END

            " -- set a rnd line number
            let g:ln_num = substitute(rnd_num, '\n', '', 'g')
            " Unix commands usually terminate output with newline, i.e.,
            " the ^@ (NULL character 0x00), which vim uses in certain cases to store a
            " newline, 0x0a. We substitute() to get rid of that terminating new line.

            " -- use generated rnd number to write to a rnd line
            silent execute "call setbufline(" . heist_buffer . ", " . g:ln_num .", 'Helsinki')"
        else
            if getline(g:ln_num) == ""
                call append(line("."), "")
                redir => rnd_num
                execute"ruby puts Random.rand(57)"
                redir END
                let g:ln_num = substitute(rnd_num, '\n', '', 'g')
                silent execute "call setbufline(" . heist_buffer . ", " . g:ln_num .", 'Helsinki')"
            endif
        endif
    endfunction


    " -- call only executes once, thereafter, triggered by the auto command
    call CriminalMasterMind()

    " -- auto command for cursor movements (specific to the game buffer)
    augroup monitor_movement
        autocmd! * <buffer=heist_buffer>
        autocmd CursorMoved * :call CriminalMasterMind()
    augroup END

endfunction

" -- linking to command
command! -nargs=* Heist :call AntiqueHeist(<f-args>)

" -- keybinding
nnoremap <silent><Leader>1  :Heist <CR>

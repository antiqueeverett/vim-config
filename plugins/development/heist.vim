" -- 1) the function (game to practice relative number)
function! AntiqueHeist()
    " -- create temp buffer
    vnew

    " -- get temp buffer number
    let heist_buffer = bufnr('%')

    " -- add 50 empty lines
    for i in range(1,60) | call append(line("."), "") | endfor

    " -- redirect output of execute command into variable
    redir => line_number_str
    silent execute"ruby puts Random.rand(57)"
    redir END

    "substitute(system('echo dani'), '\n\+$', '', '')
    let line_number_nr = str2nr(line_number_str)

    "execute "call setbufline(" . heist_buffer . ", " . line_number_nr .", 'Helsinki')"
    execute "call setbufline(" . heist_buffer . ", " . 1 .", 'Helsinki')"

    " if empty(random_number_str)
    "     echoerr "something went wrong"
    " else
    "     "let ln = str2nr(random_number_str)
    "     "echo ln
    "     " -- generating a heist member on heist buffer on a random line
    "     "echo heist_buffer . random_number
    "     "call setline(random_number, 'Helsinki')
    "     " check if line status
    "     "echo getline(line("random_number"))
    " endif


endfunction

" -- 2) linking to command
command! -nargs=* Heist :call AntiqueHeist(<f-args>)

" -- 3) keybinding (temp)
nnoremap <silent><Leader>1  :Heist <CR>

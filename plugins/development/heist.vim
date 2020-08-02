" practicing relative numbers
"""""""""""""""""""""""""""""

" see@ <https://stackoverflow.com/questions/12737977/native-vim-random-number-script>
function! RandInt(Low, High) abort
    let l:milisec = str2nr(matchstr(reltimestr(reltime()), '\v\.\zs\d+'))
    return l:milisec % (a:High - a:Low + 1) + a:Low
endfunction

" + create an new buffer
" + create 57 empty lines

function! InitGameBuffer()
    vnew
    for i in range(1, 61) | call append(line("."), "") | endfor
    silent execute "call setbufline(" . bufnr('%') . ", " . RandInt(0, 59) .", 'Helsinki')"
endfunc

" + lets constantly work with no less that 58 lines
function! ManageLineNumber()
    if line('$') != 62 && line('$') < 62
        " todo : rather get the diff and add the diff
        call append(line("$"), "")
    endif
endfunc

" + chase Helsinki
function! ChaseHelsinki()
    if getline(".") == 'Helsinki'
        execute "normal! dd"
        silent execute "call setbufline(" . bufnr('%') . ", " . RandInt(0, 59) .", 'Helsinki')"
    endif
endfunc

function! AntiqueHeist()
    execute "call InitGameBuffer()"
    augroup game_auto_cmds
        autocmd! * <buffer>
        autocmd CursorMoved <buffer> call ManageLineNumber()
        autocmd CursorMoved <buffer> call ChaseHelsinki()
    augroup END
endfunction

command! -nargs=* Heist :call AntiqueHeist(<f-args>)
nnoremap <silent><C-G> :Heist<CR>

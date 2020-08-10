" A GAME FOR PRACTICING RELATIVE NUMBERS

" + helper functions ----------------------------------------------------------
" RandInt(Low, High) ref see:
" <https://stackoverflow.com/questions/12737977/native-vim-random-number-script>
" accessed: 2020-08-09 09:57
function! RandInt(Low, High) abort
    let l:milisec=str2nr(matchstr(reltimestr(reltime()), '\v\.\zs\d+'))
    return l:milisec % (a:High - a:Low + 1) + a:Low
endfunction

" + core functions ------------------------------------------------------------
" set text="Helsinki" on a random line
function! SetText()
    silent execute 'call setbufline(' . bufnr('%') . ', ' . RandInt(1, 59) .', "Helsinki")'
endfunction

function! Play()
    if getline('.') ==# 'Helsinki'
        execute 'normal! dd'
        execute 'call SetText()'
        let b:relative_number_motion_count=b:relative_number_motion_count + 1
        echo 'current relative number motions = ' .
                    \ b:relative_number_motion_count . ' | elapsed seconds = ' .
                    \ b:duration
    endif
endfunction

function! EndGame()
    execute 'normal! gg'
    execute 'normal! V'
    execute 'normal! G'
    execute 'normal! dd'

    for i in range(1, 61) | call append(line('.'), '') | endfor

    let b:game_stats=b:relative_number_motion_count . ' relative number motions in  ' .
                \ b:duration . ' seconds'

    silent execute 'call setbufline(' . bufnr('%') . ', ' . 25 .', "              Game Over!")'
    silent execute 'call setbufline(' . bufnr('%') . ', ' . 27 .','. string(b:game_stats) . ')'
    silent execute 'call setbufline(' . bufnr('%') . ', ' . 29 .', "   Close and re-open buffer try again")'

    autocmd! game_auto_cmds
endfunction

function! UpdateGameBuffer()
    let b:current=str2nr(reltimestr(reltime()))
    let b:duration=b:current - b:start
    if (b:duration >= 60)
        call EndGame()
    else
        call Play()
    endif
endfunc

" keep num of lines >= 62
function! SetLineNumbers()
    if line('$') != 62 && line('$') < 62
        call append(line('$'), '')
    endif
endfunc

function! InitGameBuffer()
    vnew
    for i in range(1, 61) | call append(line('.'), '') | endfor
    execute 'call SetText()'
    " start time in seconds
    let b:start=str2nr(reltimestr(reltime()))
    let b:relative_number_motion_count=0
endfunc

function! PlayHeist()
    execute 'call InitGameBuffer()'
    augroup game_auto_cmds
        autocmd! * <buffer>
        autocmd CursorMoved <buffer> call SetLineNumbers()
        autocmd CursorMoved <buffer> call UpdateGameBuffer()
    augroup END
endfunction

command! -nargs=* Heist :call PlayHeist(<f-args>)
nnoremap <silent><C-G> :Heist<CR>

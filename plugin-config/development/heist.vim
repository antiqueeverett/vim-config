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
    1,$d
    for i in range(1, 61) | call append(line('.'), '') | endfor

    let b:game_stats=b:relative_number_motion_count . ' relative number motions in  ' .
                \ b:duration . ' seconds'

    silent execute 'call setbufline(' . bufnr('%') . ', ' . 25 .', "              Game Over!")'
    silent execute 'call setbufline(' . bufnr('%') . ', ' . 27 .','. string(b:game_stats) . ')'
    silent execute 'call setbufline(' . bufnr('%') . ', ' . 29 .', "      Pres CTRL + R to try again")'

    autocmd! game_auto_cmds
endfunction

function! UpdateGameBuffer()
    let b:current=str2nr(reltimestr(reltime()))
    let b:duration=b:current - b:start
    if (b:duration >= 5)
        call EndGame()
    else
        call Play()
    endif
endfunc

function! SetLineNumbers()
    if line('$') != 62 && line('$') < 62
        call append(line('$'), '')
    endif
endfunc

function! InitGameBuffer()
    1,$d
    for i in range(1, 61) | call append(line('.'), '') | endfor
    execute 'call SetText()'
    let b:start=str2nr(reltimestr(reltime()))
    let b:relative_number_motion_count=0
    augroup game_auto_cmds
        autocmd! * <buffer>
        autocmd CursorMoved <buffer> call SetLineNumbers()
        autocmd CursorMoved <buffer> call UpdateGameBuffer()
    augroup END
endfunc

function! PlayHeist()
    vnew
    execute 'call InitGameBuffer()'
endfunction

command! -nargs=* Heist :call PlayHeist(<f-args>)
nnoremap <silent><C-G> :Heist<CR>

command! -nargs=* Restart :call InitGameBuffer(<f-args>)
nnoremap <silent><C-R> :Restart<CR>

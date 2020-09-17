if exists('g:loaded_motion_tutor') | finish | endif
let g:loaded_motion_tutor = 1

" RandInt:
"   @param max
"       upper bound integer value
"   @param min
"       lower bound integer value
"   Returns a random number between max and min integer values.
"
"   see:
"   https://stackoverflow.com/questions/12737977/native-vim-random-number-script
"
"   accessed: 2020-08-09 09:57
function! RandInt(Low, High) abort
    let l:milisec=str2nr(matchstr(reltimestr(reltime()), '\v\.\zs\d+'))
    return l:milisec % (a:High - a:Low + 1) + a:Low
endfunction


" GenerateLineText:
"   Generates text at a random line
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

""
" EndGame:
"   Ends Game and shows stats.
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

""
" UpdateGameBuffer:
"   Implements game timer.
function! UpdateGameBuffer()
    let b:current=str2nr(reltimestr(reltime()))
    let b:duration=b:current - b:start
    if (b:duration >= 60)
        call EndGame()
    else
        call Play()
    endif
endfunc

""
" SetUpGameEnv:
"   Creates relative line numbers for the game.
function! SetLineNumbers()
    if line('$') != 62 && line('$') < 62
        call append(line('$'), '')
    endif
endfunc

""
" RelativeNumberMotion:
"   Sets current buffer up with environment
"   for practicing relative number motion.
function! RelativeNumberMotion()
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

""
" LaunchTutor:
"  Creates a new term window and launches
"  VIM-MOTION-TUTOR.
function! LaunchTutor()
    " start the game
    ""vnew
    if has('nvim')
        FloatermNew
                    \ --height=0.8
                    \ --width=0.8
                    \ --wintype=floating
                    \ --name=vim_motion_tutor
                    \ nvim
    else
        set termwinsize=0x86
        vert term nvim
    endif

    execute 'call RelativeNumberMotion()'
endfunction

" plugins commands
command! -nargs=* Heist :call LaunchTutor(<f-args>)
command! -nargs=* Restart :call RelativeNumberMotion(<f-args>)

" plugin mappings
nnoremap <silent><C-G> :Heist<CR>
nnoremap <silent><C-G><C-R> :Restart<CR>

let foo = {'a': 1}

"
""
" GetPos:
"   Gets current position of the cursor.
function! GetPos()
    "let b:cursor_save_pos = getpos('.')
    echo 'saving cursor at' getpos('.')
endfunction

""
" SetPos:
"   Sets position of the cursor
"   to last saved cursor position.
function! SetPos()
    "call setpos('.', b:cursor_save_pos)
    echo 'moving cursor back to' getpos('.')
endfunction

" augroup get_cursor_pos
"     autocmd!
"     autocmd FocusLost,WinLeave,CmdwinLeave,TabLeave,QuickFixCmdPost
"                 \ * silent execute 'call GetPos()'
" augroup END
"
" augroup set_cursor_pos
"     autocmd!
"     autocmd FocusGained,WinEnter,CmdwinEnter,TabEnter,QuickFixCmdPre
"                 \ * silent execute 'call SetPos()'
" augroup END
" BufEnter
" BufLeave
" BufWinEnter
" BufWinLeave

" check for the 'persistent_undo' feature
if has('persistent_undo')
    " define undo dir
    let undo_dir = expand('~/.config/vim-persisted-undo/')

    " create undo dir iff it does not exist
    if !isdirectory(undo_dir)
        call system('mkdir -p ' . undo_dir)
    endif

    " let Vim know about the directory
    let &undodir = undo_dir

    "enable undo persistence.
    set undofile
endif



" deleting all hidden buffers
function DeleteHiddenBuffers()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction


augroup auto_clean
    autocmd!
    autocmd InsertLeave,
                \CursorHold,CursorMoved,
                \FocusGained,FocusLost,
                \BufWinLeave,BufLeave,
                \VimLeavePre
                \ * silent execute 'call Autosave()'
augroup END

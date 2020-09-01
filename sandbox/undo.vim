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

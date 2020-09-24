let NERDTreeMouseMode=2

let NERDTreeHighlightCursorline=1

let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
            \ '\.o$', '\.so$', '\.egg$', '^\.git$', '__pycache__', '\.DS_Store' ]

function! ToggleNTree()
    execute 'NERDTreeToggle .'
    if &number != 1
        set relativenumber
    endif
endfunction

nnoremap <silent><Leader><Space> :call ToggleNTree()<CR>

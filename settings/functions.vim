function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
nnoremap <silent><Leader>? :call ToggleNumber()<CR>

function! ShowBufferVars()
    echo "1. buffer number = " . bufnr('%')
    echo "2. buffer buftype = " .&buftype
    echo "3. buffer nume = " . bufname('%')
    echo "4. buffer modifiable = " . &modifiable
    echo "5. buffer file type = " . &ft
endfunc

function! Updatable()
    if &modifiable=='1' && &buftype=='' && &ft !='' | return 1 | endif
    if &modifiable!='1' || &buftype!='' || &ft =='' | return 0 | endif
endfunc

function! SaveOnExit()
    execute "update"
endfunction

function! ForceExit()
    execute "q!"
endfunction

function! CheckBuffer()
    if Updatable()  | execute "call SaveOnExit()" | endif
    if !Updatable()  | execute "call ForceExit()" | endif
endfunction

function! PullUpFZF()
    execute "call CheckBuffer()"
    execute "FZF $HOME/Repositories"
endfunction

function! ExitBuffer()
    execute "call CheckBuffer()"
    execute "bd!"
endfunction

function! SwitchBuffer()
    execute "call CheckBuffer()"
endfunction

nnoremap <silent><Leader>q :call ForceExit()<CR>
nnoremap <silent><Leader>d :call ExitBuffer()<CR>

nnoremap <silent><leader>$ :source $HOME/.vimrc<CR>
nnoremap <silent><Leader>' :call PullUpFZF()<CR>

nnoremap <silent><leader><Tab> :call SwitchBuffer()<CR>

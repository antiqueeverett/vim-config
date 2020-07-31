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

function CheckBufferTypeOnExit()
    execute "update"
endif
endfunction

function! PullUpFZF()
    if &modifiable!='1' || &buftype!='' || &ft =='' | execute (bufnr('%') . " bd!") | endif
    if &modifiable=='1' && &buftype=='' && &ft !=''
        execute "FZF $HOME/Repositories"
    endif
endfunction

function! ExitBuffer()
    if &modifiable!='1' || &buftype!='' || &ft ==''
        execute (bufnr('%') . " bd!")
    elseif &modifiable=='1' && &buftype=='' && &ft !=''
        execute "update"
        execute "bd"
    endif
    if &buftype=='' && bufname('%')=='' && &modifiable=='1' | execute "q!" | endif
endfunction

function! SwitchBuffer()
    if &modifiable!='1' || &buftype!='' || &ft =='' | execute (bufnr('%') . " bd!") | endif
    if &modifiable=='1' && &buftype=='' && &ft !='' | execute "bn" | endif
endfunction

nnoremap <leader>$ :source $HOME/.vimrc<CR>
nnoremap <silent><Leader>' :call PullUpFZF()<CR>
nnoremap <silent><Leader>q :call ExitBuffer()<CR>
nnoremap <silent><Leader>d :call ExitBuffer()<CR>
nnoremap <silent><leader><Tab> :call SwitchBuffer()<CR>

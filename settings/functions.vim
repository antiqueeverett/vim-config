" -- toggling between number and relative number
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
nnoremap <silent><Leader>? :call ToggleNumber()<CR>

" -- exiting to a clean terminal
function! ExitClean()
    silent execute "!clear"
    execute "normal! ZZ"
endfunc
nnoremap <silent> q :call ExitClean()<CR>

" -- updating buffer on buffer switch
function! UpdateOnBufferSwitch()
    execute "bn"
endfunc
nnoremap <leader><Tab> :call UpdateOnBufferSwitch()<CR>

function! UpdateOnBufferDelete()
    execute "bdelete!"
endfunc
nnoremap <Leader>d :call UpdateOnBufferDelete()<CR>

nnoremap <leader>$ :source $HOME/.vimrc<CR>

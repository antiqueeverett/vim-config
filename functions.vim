" toggle number line style
function! ToggleLineNumbersStyle()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
        set number
        set number relativenumber
    endif
endfunction

" toggle line numbers on/off
function! ToggleLineNumbers()
    if &relativenumber == 1 || &number == 1
        set norelativenumber
        set nonumber
    else
        set relativenumber
        set number
        set number relativenumber
    endif
endfunction

" key maps
nnoremap <silent><C-N> :call ToggleLineNumbers()<CR>
nnoremap <silent><Leader>? :call ToggleLineNumbersStyle()<CR>

" list of files with workflow functions
let g:workflow_functions=[
            \'dir-ops.vim',
            \'file-ops.vim',
            \'vim-terminal.vim',
            \'buffer-navigation.vim']

" source files
for file in g:workflow_functions
    execute 'source $VIM_DOTFILES_PATH/workflow/' . file
endfor

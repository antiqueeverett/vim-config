function! CMakeFunction()
    silent execute 'Dispatch $HOME/Repositories/dotfiles/res/helpers/cmake.sh'
    bufdo e
endfunction

" -- linking to command
command! -nargs=* CXXMake :call CMakeFunction(<f-args>)

" -- keybinding
nnoremap <silent><Leader>0  :CXXMake <CR>


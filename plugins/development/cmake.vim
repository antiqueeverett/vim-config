function! CXXMake()
    execute '! $HOME/Repositories/dotfiles/res/helpers/cmake.sh'
endfunction

" -- linking to command
command! -nargs=* CMake :call CXXMake(<f-args>)

" -- keybinding
nnoremap <silent><Leader>9  :CMake <CR>


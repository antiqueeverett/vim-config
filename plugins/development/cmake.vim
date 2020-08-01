function! CMakeFunction()
    " silent execute '!$HOME/Repositories/dotfiles/res/helpers/cmake.sh'
    " silent execute 'redraw!'
    execute "set termwinsize=0x82"
    execute "vert term cmake.sh"
endfunction

" -- linking to command
command! -nargs=* CXXMake :call CMakeFunction(<f-args>)

" -- keybinding
nnoremap <silent><Leader>0  :CXXMake <CR>

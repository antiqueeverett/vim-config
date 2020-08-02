function! CMakeFunction()
    " silent execute '!$HOME/Repositories/dotfiles/res/helpers/cmake.sh'
    " silent execute 'redraw!'
    set shell=/usr/bin/zsh
    execute "set termwinsize=0x82"
    execute "vert term cmake.sh"
    "set shell=
endfunction

" -- linking to command
command! -nargs=* CXXMake :call CMakeFunction(<f-args>)

" -- keybinding
nnoremap <silent><Leader>0  :CXXMake <CR>

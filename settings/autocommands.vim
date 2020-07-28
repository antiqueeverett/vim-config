" -- stripping white spaces on save
augroup strip_on_save
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

" -- overriding theme colors
augroup theme-overrides
    autocmd!
    autocmd ColorScheme * highlight vimCommentTitle ctermfg=14 guifg=#8FBCBB
    autocmd ColorScheme * highlight Search ctermfg=7*
    autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
augroup END

" wrap text
au BufRead,BufNewFile * setlocal textwidth=80

" default cwd to current buffer
autocmd BufEnter * silent! lcd %:p:h

" close if remaining buffer is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

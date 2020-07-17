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

" -- auto wrapping text @ textwidth demarkation
au BufRead,BufNewFile * setlocal textwidth=80

" -- automatically changing the current directory
autocmd BufEnter * silent! lcd %:p:h

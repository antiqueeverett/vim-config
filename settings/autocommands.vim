" -- stripping empty white spaces on write (vimautoformat does it the right way?)
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

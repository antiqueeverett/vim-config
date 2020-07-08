" -- stripping empty white spaces on write
augroup strip_on_save
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END


augroup nord-theme-overrides
    autocmd!
    autocmd ColorScheme nord highlight vimCommentTitle ctermfg=14 guifg=#8FBCBB
    autocmd ColorScheme nord highlight Search ctermbg=3 ctermfg=7 guibg=#EBCB8B guifg=#3B4252
    autocmd ColorScheme nord highlight IncSearch ctermbg=8 guibg=#4566A
augroup END


" -- stripping empty white spaces on write
augroup clean_on_save
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

" -- indenting on write
augroup indent_on_save
    autocmd!
    autocmd BufWritePre *.html *.cpp *.java *.tex *.md :normal gg=G
augroup END


" -- stripping white spaces on save
augroup strip_on_save
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

" wrap text
au BufRead,BufNewFile * setlocal textwidth=80

" change directory to buffer/file directory
autocmd BufEnter * silent! lcd %:p:h


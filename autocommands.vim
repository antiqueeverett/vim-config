" -- stripping white spaces on save
augroup strip_on_save
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

" wrap text
au BufRead,BufNewFile * setlocal textwidth=80

" always set cwd = current buffer-file wd
autocmd BufEnter * silent! lcd %:p:h

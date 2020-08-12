augroup strip_on_BufWritePre
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

augroup linewrap_on_BufRead
    autocmd!
    autocmd BufRead,BufNewFile * setlocal textwidth=80
augroup END

augroup cwd_on_BufEnter
    autocmd!
    autocmd BufEnter * silent! lcd %:p:h
augroup END

" augroup manageplugins_on_BufRead
"     autocmd!
"     autocmd BufRead * silent execute 'GitGutterBufferToggle'
" augroup END

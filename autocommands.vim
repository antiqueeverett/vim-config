augroup strip_on_save
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

augroup line_wrap
    autocmd!
    autocmd BufRead,BufNewFile * setlocal textwidth=80
augroup END

augroup cwd_buffer_path
    autocmd!
    autocmd BufEnter * silent! lcd %:p:h
augroup END

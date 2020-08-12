augroup strip_on_buffersave
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

augroup linewrap_on_newbuffer
    autocmd!
    autocmd BufRead,BufNewFile * setlocal textwidth=80
augroup END

augroup cwd_on_bufferenter
    autocmd!
    autocmd BufEnter * silent! lcd %:p:h
augroup END

augroup manageplugins_on_bufferenter
    autocmd!
    autocmd BufEnter * :GitGutterBufferToggle<CR>
augroup END

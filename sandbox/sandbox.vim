if exists('g:loaded_clipboard') | finish | endif
let g:loaded_clipboard = 1

function! CutFunction()
    execute "normal! \"rdiw"
endfunction
command! -nargs=* Cut :call CutFunction(<f-args>)

function! CUTFunction()
    execute "normal! \"rdiW"
endfunction
command! -nargs=* CUT :call CUTFunction(<f-args>)

function! CopyFunction()
    execute "normal! \"ryiw"
endfunction
command! -nargs=* Copy :call CopyFunction(<f-args>)

function! COPYFunction()
    execute "normal! \"ryiW"
endfunction
command! -nargs=* COPY :call COPYFunction(<f-args>)

function! PasteFunction()
    execute "normal! \".viw"
    execute 'normal! P'
endfunction
command! -nargs=* Paste :call PasteFunction(<f-args>)

function! PASTEFunction()
    execute "normal! \".viW"
    execute 'normal! P'
endfunction
command! -nargs=* PASTE :call PASTEFunction(<f-args>)

nnoremap <Leader>x  :Cut<CR>
nnoremap <Leader>X  :CUT<CR>
nnoremap <Leader>c  :Copy<CR>
nnoremap <Leader>C  :COPY<CR>
nnoremap <Leader>p  :Paste<CR>
nnoremap <Leader>P  :PASTE<CR>

function! ReplaceWordFunction(arg)
    execute '%s/' . expand('<cword>') . '/' . a:arg . '/gc'
endfunction
command! -nargs=* Repword :call ReplaceWordFunction(<f-args>)

function! ReplaceWORDFunction(arg)
    execute '%s/' . expand('<cWORD>') . '/' . a:arg . '/gc'
endfunction
command! -nargs=* RepWORD :call ReplaceWORDFunction(<f-args>)

nnoremap <Leader>r  :Repword
nnoremap <Leader>R  :RepWORD

""
" IsVerbose:
"     Checks if text is verbose.
function! IsVerbose(num)
    if(a:num > 20)
        return v:true
    else
        return v:false
    endif
endfunction

""
" ClipboardMsg
"     Shows the first line of the most recent yank
"     for both vim clipboard and system clipboard
function! ClipboardMsg()
    if (v:event.regtype !=# 'V')
        let @"=getreg('"+yy')
    endif

    let l:yanked = getline('.')
    if IsVerbose(str2nr(strlen(l:yanked)))
        echo trim(l:yanked) '...'
    else
        echo trim(l:yanked)
    endif
endfunction

augroup show_yank
    au!
    au TextYankPost * call ClipboardMsg()
augroup END

" paste from clipboard
nnoremap <Leader>yp "+p
nnoremap <Leader>yP "+P
vnoremap <Leader>yp "+p
vnoremap <Leader>yP "+P

" yank into system clipboard
vmap <Leader>yy "+yy<Bar>""y
" NOTE:
"   TextYankPost does not trigger when yanking
"   from visual mode; that is to say ["+yy] does
"   not trigger the TextYankPost event. Here, I
"   use [""y] right after to trigger that event.:
